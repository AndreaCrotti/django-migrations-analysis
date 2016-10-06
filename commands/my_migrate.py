import mock
import datetime

from django.core.management import call_command
from django.core.management.base import BaseCommand

# DJANGO_MIGRATIONS = """
# CREATE TABLE "django_migrations"
# ("id" integer, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" timestamp NOT NULL);
# """


def my_runpython(forward, backward=None):
    # TODO: capture the SQL and rollback the changes right after to avoid extra changes??
    pass


def insert_dj_migrations(index, app, name):
    now = datetime.datetime.utcnow().isoformat()
    # TODO: support multiple databases
    return "\nINSERT INTO django_migrations VALUES (%d, '%s', '%s', '%s'); \n" % (index, app, name, now)


class Command(BaseCommand):
    help = "Prints the SQL statements for the named migration."

    output_transaction = True

    # def add_arguments(self, parser):
    #     parser.add_argument('--database', default=DEFAULT_DB_ALIAS,
    #                         help='Nominates a database to create SQL for. Defaults to the '
    #                         '"default" database.')

    #     parser.add_argument('-o', '--output',
    #                         help='Where to write the SQL result file.')

    def handle(self, *args, **options):
        # do some monkey patching 
        call_command('migrate')
