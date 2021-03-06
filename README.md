HURUmap
=======

What’s the data behind the story? [HURUmap](https://hurumap.org) gives infomediaries like journalists and civic activists an easy ‘plug & play’ toolkit for finding and embedding interactive data visualisations into their storytelling.

HURUmap’s underlying data is quality-checked, from reputable official sources including the government Census, PEPFAR and Uwezo.

The project is built on [Wazimap](http://wazimap.readthedocs.org/en/latest/), an open source platform by OpenUp and Media Monitoring Africa for making census data more understandable.


## Development

We use [Docker Compose](https://docs.docker.com/compose/) to simplify development.

To get started, set the HURUmap App you want to work on and spin up the container like so:

```shell
export HURUMAP_APP=hurumap_ke
make web
```

You can create a db and load initial data by running the the following commands;
```shell
make createdb
make loaddata

# (Optional) If sqlalchemy.exc.NoSuchTableError error thrown:
export HURUMAP_APP=hurumap_land
# 1. Local Docker DB
docker-compose up -d db
cat $HURUMAP_APP/sql/*.sql | docker-compose exec -T db psql $HURUMAP_APP
# 2. Remote DB option
cat $HURUMAP_APP/sql/*.sql | docker-compose exec -T -e PGPASSWORD=<pass> db psql -h <db.host.com> -U <user> $HURUMAP_APP
```

#### `elimu_yangu` `.sql` files

`olevel_student_performance.sql` has been split into 2 files by year because as a single 
file, it surpasses the maximum file size allowed by Github

### Import Data into HURUmap

TODO: Needs to use docker-compose, test, and QA

1. Ensure ``${HURUMAP_APP}/tables.py`` has a ``FieldTable`` that has exactly the columns that you're importing. If there are multiple tables with exactly the same columns, perhaps because their Universes are different, then be sure to take note of the **table id**.
2. Do a dry-run of the import, using the table name if necessary.

        python manage.py importsimplecsv yourfile.csv --dry-run [--table TABLENAME]

3. If it all looks good, run it without ``--dry-run``.
4. Update (or create) the raw SQL data:

        python manage.py dumppsql --table TABLENAME > sql/TABLENAME.sql

5. Commit to git.
6. All done!


### Downloading / Archive Data:

We make the data available in our repository for added availability in two primary ways:

1. Django fixtures (primarily `wazimap_geography`)
2. FieldTables as SQL files.

To do this, run the following command:
```shell
export HURUMAP_APP=<hurumap_app>
make dumpdata
```


---

## Deployment

We use [dokku](https://dokku.viewdocs.com/dokku) to deploy on our own servers. It's awesome like sliced bread or [*chapati*](https://google.com/search?q=chapati). Check out their docs on getting started: https://dokku.viewdocs.com/dokku

Once set up, you'll have to do a couple of things:
```
# Create app
dokku apps:create hurumap-ke

# Set environment variables
dokku config:set hurumap-ke \
  HURUMAP_APP=hurumap_ke \
  DJANGO_SETTINGS_MODULE=hurumap_ke.settings \
  DATABASE_URL=postgresql://hurumap_ke:hurumap_ke@localhost/hurumap_ke
```

After ensuring your [ssh key is added](https://dokku.viewdocs.com/dokku/user-management), from your local machine you should now run:
```
git remote add dokku dokku@hurumap.org:hurumap-ke
git push dokku
```

***NOTE:** You'll have to set up the database before deployment. Either [self-hosted](https://github.com/dokku/dokku-postgres-plugin) or [managed](https://aws.amazon.com/rds).*


### Checks

Dokku allows for checks that make sure you have [zero-downtime deployments](http://dokku.viewdocs.io/dokku/deployment/zero-downtime-deploys/). We currently only check for DB errors but should allow for better checks in the future.


## Contributing

If you'd like to contribute to HURUmap, check out the [CONTRIBUTING.md](CONTRIBUTING.md) file on how to get started.


---

## Importing data into HURUmap

1. Ensure ``hurumap_ke/tables.py`` has a ``FieldTable`` that has exactly the columns that you're importing. If there are multiple tables with exactly the same columns, perhaps because their Universes are different, then be sure to take note of the **table id**.
2. Do a dry-run of the import, using the table name if necessary.

        python manage.py importcsv yourfile.csv --dry-run [--table TABLENAME]

3. If it all looks good, run it without ``--dry-run``.
4. Update (or create) the raw SQL data:

        python manage.py dumppsql --table TABLENAME > sql/TABLENAME.sql

5. Commit to git.
6. All done!

To dump all data tables at once, run
```shell
for t in `ls hurumap_ke/sql/[a-z]*.sql`
do
    echo $t
    pg_dump "postgres://hurumap_ke:hurumap_ke@localhost/hurumap_ke" \
        -O -c --if-exists -t $(basename $t .sql) \
      | egrep -v "(idle_in_transaction_session_timeout|row_security)" \
      > hurumap_ke/sql/$(basename $t .sql).sql
done
```

## Adding Google Analytics

HURUmap supports the use of both single and multiple tracking ids on a single page.

For the case of a single tracking id (or when one tracking id needs to be identified as the "default" tracking id), the variable `ga_tracking_id` should be set to the [*string*](https://developers.google.com/edu/python/strings) value of the tracking id.

For example:

```
[hurumap_ke/settings.py]

...
HURUMAP['ga_tracking_id'] = 'UA-44795600-8'
...
```

And in those cases were multiple tracking ids need to be set, `ga_tracking_ids` (with an s) should be set as a [*list*](https://developers.google.com/edu/python/lists) of tracking ids.

For example:

```
[hurumap_ke/settings.py]

...
HURUMAP['ga_tracking_ids'] = ['UA-44795600-1', 'UA-44795600-2', 'UA-44795600-3']
...
```

**NOTE:** By default, `HURUMAP['ga_tracking_id'] = 'UA-44795600-8'`. If you're not using `ga_tracking_id` at all (such as in those situation where you're only using multiple tracking ids or you're not using Google Analytics altogether), remember to set this variable to blank i.e. `HURUMAP['ga_tracking_id'] = ''`

### Tests

?

---

## License

MIT
