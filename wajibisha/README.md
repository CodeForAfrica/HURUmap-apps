WAJIBISHA
=======

## Deployment

We use [dokku](https://dokku.viewdocs.com/dokku) to deploy on our own servers. It's awesome like sliced bread or [*chapati*](https://google.com/search?q=chapati). Check out their docs on getting started: https://dokku.viewdocs.com/dokku

Once set up, you'll have to do a couple of things:
```
# Create app
dokku apps:create hurumap-ke

# Set environment variables
dokku config:set hurumap-ke \
  DJANGO_SETTINGS_MODULE=hurumap_ke.settings \
  DATABASE_URL=postgresql://hurumap_ke:hurumap_ke@localhost/hurumap_ke
```

After ensuring your [ssh key is added](https://dokku.viewdocs.com/dokku/user-management), from your local machine you should now run:
```
git remote add dokku dokku@hurumap.org:hurumap-ke
git push dokku
```

***NOTE:** You'll have to set up the database before deployment. Either [self-hosted](https://github.com/dokku/dokku-postgres-plugin) or [managed](https://aws.amazon.com/rds).*

### CRON Job for updating promises
To keep the promises updated, we run a job to get promises from trello and update the database
```sh
sudo su dokku
crontab -e
```

Add the following entry to your crontab

```sh
0 * * * * echo '{}' | dokku --rm run wajibisha python manage.py scrape_trello
```
### Checks

Dokku allows for checks that make sure you have [zero-downtime deployments](http://dokku.viewdocs.io/dokku/deployment/zero-downtime-deploys/). We currently only check for DB errors but should allow for better checks in the future.


