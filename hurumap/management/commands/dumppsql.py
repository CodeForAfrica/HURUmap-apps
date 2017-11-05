import subprocess

from django.core.management.base import BaseCommand, CommandError
from django.conf import settings


class Command(BaseCommand):
    help = "Dumps data tables to CSV. Just a thin wrapper around pg_dump."

    def add_arguments(self, parser):
        parser.add_argument(
            '--table',
            action='store',
            dest='table',
            default=None,
            help='Which table to dump.'
        )

    def handle(self, *args, **options):
        table_id = options.get('table')
        if not table_id:
            raise CommandError("You need to specify a table with --table")

        db = settings.DATABASES['default']

        args = ["-O", "-c", "--if-exists", "-t", table_id]
        args += ["-d", db['NAME']]
        args += ["-h", db['HOST']]
        args += ["-U", db['USER']]
        args += ["-U", db['USER']]

        args = ["pg_dump"] + args

        p = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()

        self.stdout.write(stdout.decode('utf8'))
