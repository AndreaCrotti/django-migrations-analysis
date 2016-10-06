import mock
from collections import defaultdict

from django.core.management import call_command
from django.core.management.base import BaseCommand
from django.db import migrations, connection, DEFAULT_DB_ALIAS
from django.db.utils import OperationalError
from django.test.utils import CaptureQueriesContext

# TODO: this should be instead matching the executed migration
BY_APP = defaultdict(int)


def is_not_migrated(connection):
    with connection.cursor() as cursor:
        try:
            cursor.execute("SELECT COUNT(*) FROM django_migrations;")
            row = cursor.fetchone()
        except OperationalError:
            return True
        else:
            return row[0] == 0


class MyRunPython(migrations.RunPython):
    def database_forwards(self, app_label, schema_editor, from_state, to_state):
        with CaptureQueriesContext(connection) as queries:
            go_forward = super(MyRunPython, self).database_forwards(
                app_label, schema_editor, from_state, to_state)

        captured = [q['sql'].encode('utf-8') for q in queries.captured_queries]
        if len(captured) > 0:
            lines = ["BEGIN"] + captured + ["COMMIT"]
            fname = "{}_{}_{}.sql".format(type(self).__name__, app_label, BY_APP['label'])
            with open(fname, 'w') as out:
                for line in lines:
                    out.write("{};\n".format(line))

            BY_APP[app_label] += 1

        return go_forward


class Command(BaseCommand):
    help = "Generate SQL files from all the migrations involving RunPython"

    def add_arguments(self, parser):
        # TODO: take a database url to use instead of the usual
        parser.add_argument(
            '--database', default=DEFAULT_DB_ALIAS,
            help='Nominates a database to create SQL for. Defaults to the "default" database.',
        )

    @mock.patch('django.db.migrations.RunPython', new=MyRunPython)
    def handle(self, *args, **options):
        assert is_not_migrated(connection), "Need to run this on an empty database!"
        call_command('migrate')
