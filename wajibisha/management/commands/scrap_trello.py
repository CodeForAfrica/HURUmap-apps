from django.core.management.base import BaseCommand, CommandError
import requests
from wajibisha.settings import BOARDS
import logging
import json
from django.conf import settings

logging.basicConfig()
# logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)
logger = logging.getLogger(__name__)


class Command(BaseCommand):
    help = ('This helper script pulls promises from trello for each county '
            'and saves them to the database in the appropriate geography')

    def handle(self, *args, **options):
        # fetch promises
        promises = self.fetch_promises()

        # save promises to DB
        pass

    def fetch_promises(self):
        # fetch the promises
        logger.info('Fetching promises')
        try:
            for board_key in BOARDS.keys():
                url = BOARDS[board_key] + '/lists?fields=name&cards=all&card_fields=name,labels'
                r = requests.get(url)
                if r.status_code == requests.codes.ok:
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
                                    promises_list += [county, sector, card_name, status]

                                else:
                                    continue
                        else:
                            pass
                    return promises_list
                else:
                    logger.error('Host replied with status code {}'.format(r.status_code))
        except Exception as e:
            raise CommandError(
                'Error: {}'.format(e.message))

    def save_promises_to_db(self, promises):
        # first check if DB exists, if it does clear it, if not create it

        # write the promises into the DB

        pass

    def checkDB_status(self):
        # does the DB exit

        # create DB

        # clear DB
        pass

    def createDB(self):
        pass

    def clearDB(self):
        pass
