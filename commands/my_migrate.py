import mock
from collections import defaultdict

from django.core.management import call_command
from django.core.management.base import BaseCommand
from django.db import migrations, connection
from django.db.migrations.operations.base import Operation
from django.test.utils import CaptureQueriesContext

BY_APP = defaultdict(int)


class MyRunPython(migrations.RunPython):
    def database_forwards(self, app_label, schema_editor, from_state, to_state):
        with CaptureQueriesContext(connection) as queries:
            go_forward = super(MyRunPython, self).database_forwards(
                app_label, schema_editor, from_state, to_state)

        captured = [q['sql'] for q in queries.captured_queries]
        if len(captured) > 0:
            lines = ["BEGIN"] + captured + ["COMMIT"]
            fname = "{}{}{}.sql".format(type(self).__name__, app_label, BY_APP['label'])
            with open(fname, 'w') as out:
                for line in lines:
                    out.write("{};\n".format(line))

            BY_APP[app_label] += 1

        return go_forward


class Command(BaseCommand):
    help = "Prints the SQL statements for the named migration."

    output_transaction = True

    # @mock.patch('django.db.migrations.RunSQL', new=MyRunPython)
    @mock.patch('django.db.migrations.RunPython', new=MyRunPython)
    # @mock.patch('django.db.migrations.CreateModel', new=MyRunPython)
    def handle(self, *args, **options):
        # do some monkey patching 
        call_command('migrate')
