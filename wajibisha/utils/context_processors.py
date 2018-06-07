from tweepy import TweepError
from wazimap.data.utils import get_session
import tweepy
from wajibisha.settings import TWITTER_ACCESS_TOKEN, \
    TWITTER_ACCESS_TOKEN_SECRET, TWITTER_CONSUMER_KEY, TWITTER_CONSUMER_SECRET

import logging

log = logging.getLogger(__name__)


BASE_URL = 'https://twitter.com/'

PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]


def get_homepage_promises(request):
    session = get_session()

    query = "SELECT sector,status,COUNT(status) FROM promises WHERE " \
            "geo_code='47' AND geo_level='county' GROUP BY sector,status"

    promises = session.execute(query).fetchall()
    # returns (('Sector', 'Status', 'Occurence'), ....)

    promises_data = {}
    for k in promises:
        if k[0] not in promises_data.keys():
            promises_data[k[0]] = {k[1]: int(k[2])}
        else:
            promises_data[k[0]][k[1]] = int(k[2])

    # find any missing status and make it zero

    for key, value in promises_data.iteritems():
        missing_status = list(set(PROMISE_STATUS) - set(value.keys()))
        for i in missing_status:
            promises_data[key][i] = 0

    return {
        'health_total': sum(promises_data['Health'].values()),
        'health_fulfilled': promises_data['Health'].get('Done', 0),
        'housing_total': sum(promises_data['Housing'].values()),
        'housing_fulfilled': promises_data['Housing'].get('Done', 0),
        'jobs_total': sum(promises_data['Jobs, Business Creation'].values()),
        'jobs_fulfilled': promises_data['Jobs, Business Creation'].get('Done',
                                                                       0)
    }


def fetch_tweets(request):
    try:
        log.info('Getting Tweets')
        auth = tweepy.OAuthHandler(TWITTER_CONSUMER_KEY, TWITTER_CONSUMER_SECRET)
        auth.set_access_token(TWITTER_ACCESS_TOKEN, TWITTER_ACCESS_TOKEN_SECRET)

        api = tweepy.API(auth)

        # get the 3 latest tweets
        public_tweets = api.user_timeline(screen_name='PesaCheck', count=3)
        # log.debug(public_tweets)

        formated_tweets = [
            {'url': BASE_URL + tweet.user.screen_name + '/' + str(tweet.id),
             'text': tweet.text, 'retweet_count': tweet.retweet_count,
             'favorite_count': tweet.favorite_count,
             'screen_name': tweet.author.screen_name,
             'profile_image_url': tweet.author.profile_image_url,
             'name': tweet.author.name} for tweet in public_tweets]

        log.debug(formated_tweets[1]['text'])

        return {
            'tweets': formated_tweets
        }
    except Exception as e:
        log.error(e.message)
        return []
