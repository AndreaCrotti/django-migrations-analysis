import mock

from django.core.management import call_command
from django.core.management.base import BaseCommand
from django.db import migrations, connection
from django.test.utils import CaptureQueriesContext


class MyRunPython(migrations.RunPython):
    def database_forwards(self, *args, **kwargs):
        with CaptureQueriesContext(connection) as queries:
            go_forward = super(MyRunPython, self).database_forwards(*args, **kwargs)

        actual_sql = ";\n".join(q['sql'] for q in queries.captured_queries)
        print(actual_sql)
        return go_forward


class Command(BaseCommand):
    help = "Prints the SQL statements for the named migration."

    output_transaction = True

    @mock.patch('django.db.migrations.RunPython', new=MyRunPython)
    def handle(self, *args, **options):
        # do some monkey patching 
        call_command('migrate')
