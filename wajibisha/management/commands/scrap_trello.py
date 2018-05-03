import os
from django.core.exceptions import ObjectDoesNotExist
from django.core.management.base import BaseCommand, CommandError
import requests
from wajibisha.settings import BOARDS, LAST_UPDATED
import logging
from wazimap.data.tables import get_datatable
from wazimap.models import Geography
from wazimap.data.utils import get_session
from datetime import datetime


logging.basicConfig()
# logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)
logger = logging.getLogger(__name__)


class Command(BaseCommand):
    help = ('This helper script pulls promises from trello for each county '
            'and saves them to the database in the appropriate geography')

    def __init__(self, stdout=None, stderr=None, no_color=False):
        super(Command, self).__init__(stdout=None, stderr=None, no_color=False)
        self.session = get_session()
        self.table = get_datatable('promises')

    def handle(self, *args, **options):
        # fetch promises
        promises = self.fetch_promises()

        self.setup_table()

        self.save_promises_to_db(promises)

        LAST_UPDATED = datetime.now()

    def setup_table(self):
        """
        Creates the Table in the Database
        :rtype: None

        """
        logger.info('Setting up the table')
        try:
            self.stdout.write(
                "Table is %s" %
                self.table.id)
        except KeyError:
            raise CommandError(
                "Couldn't establish which table to use for these fields. "
                "Have you added a FieldTable entry in wazimap_za/tables.py?\n")

    def fetch_promises(self):
        # fetch the promises
        logger.info('Fetching promises')
        try:
            for board_key in BOARDS.keys():
                url = BOARDS[board_key] \
                      + '/lists?fields=name&cards=all&card_fields=name,labels'
                r = requests.get(url)
                if r.status_code == requests.codes.ok:
                    # clear DB only if the request for new promises is
                    # successful
                    self.clearDB()

                    board = r.json()
                    promises_list = []
                    for board_list in board:
                        county = board_key
                        sector = board_list.get('name', 'unknown')
                        cards = board_list.get('cards', [])
                        if len(cards) > 0:
                            for card in cards:
                                card_name = card.get('name', 'unknown')
                                labels = card.get('labels', [])
                                if len(labels) > 0:
                                    status = labels[0].get('name', 'unknown')
                                    promises_list.append(
                                        [county, sector, card_name, status])

                                else:
                                    continue
                        else:
                            pass
                    return promises_list
                else:
                    logger.error('Host replied with status code {}'.format(
                        r.status_code))
        except Exception as e:
            raise CommandError(
                'Error: {}'.format(e.message))

    def get_geo_data(self, geo_name):
        try:
            query = Geography.objects.get(name__iexact=geo_name)
            return query.geo_code, query.geo_level
        except ObjectDoesNotExist:
            raise CommandError(geo_name + " does not exist")

    def save_promises_to_db(self, promises):
        """
        [county, sector, card_name, status]
        """
        logger.info('saving promises to DB')
        geo_version = os.environ.get('DEFAULT_GEO_VERSION', '2009')

        for row in promises:
            model_row = {}
            geo_code, geo_level = self.get_geo_data(row[0])
            model_row['geo_version'] = geo_version
            model_row['geo_code'] = geo_code
            model_row['geo_level'] = geo_level
            model_row['sector'] = row[1]
            model_row['promise'] = row[2]
            model_row['status'] = row[3]

            entry = self.table.model(**model_row)
            self.session.add(entry)
            self.session.commit()

        self.session.close()

    def clearDB(self):
        # clear DB to update the promises
        self.session.execute('TRUNCATE promises;')

