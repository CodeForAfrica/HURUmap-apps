from django.core.management.base import BaseCommand, CommandError
import requests
import logging
from django.conf import settings

logging.basicConfig()
# logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)
logger = logging.getLogger(__name__)


class Command(BaseCommand):
    help = ('This helper script pulls promises from trello for each county '
            'and saves them to the database in the appropriate geography')

    def handle(self, *args, **options):
        # fetch promises
        self.fetch_promises()

        # save promises to DB
        pass

    def fetch_promises(self):
        # fetch the promises
        logger.info('Fetching promises')
        try:
            r = requests.get('https://api.trello.com/1/boards/hmtAAEVr/lists?fields=name&cards=all&card_fields=name,labels')
            if r.status_code == requests.codes.ok:
                promises = r.json()
                print promises
            else:
                logger.error('Host replied with status code {}'.format(r.status_code))


        except Exception as e:
            logger.error(e.message)

        # check if promises are available

        # do some manipulations on them to sort them into manageable data structure

        # return the promises
        pass

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
