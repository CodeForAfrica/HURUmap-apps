HURUmap
=======

What’s the data behind the story? [HURUmap](https://hurumap.org) gives infomediaries like journalists and civic activists an easy ‘plug & play’ toolkit for finding and embedding interactive data visualisations into their storytelling.

HURUmap’s underlying data is quality-checked, from reputable official sources including the government Census, PEPFAR and Uwezo.

The project is built on [Wazimap](http://wazimap.readthedocs.org/en/latest/), an open source platform by OpenUp and Media Monitoring Africa for making census data more understandable.


## Development

1. Clone the repo
2. ``cd HURUmap``
3. ``virtualenv --no-site-packages env``
4. ``source env/bin/activate``
5. ``pip install -r requirements.txt``


***NB:** The set up docs from here assume setting up HURUmap Kenya but is applicable to the rest of the projects.*

You will need a Postgres database:

```
psql
create user hurumap_ke with password hurumap_ke;
create database hurumap_ke;
grant all privileges on database hurumap_ke to hurumap_ke;
```

Set the environment variables as needed:
```
export DJANGO_SETTINGS_MODULE=hurumap_ke.settings
export DATABASE_URL=postgresql://hurumap_ke:hurumap_ke@localhost/hurumap_ke
```

Run migrations to keep Django happy:
```
python manage.py migrate
```

Import the data into the new database (will overwrite some tables created by Django, but that's ok).
```
cat hurumap_ke/sql/*.sql | psql -U hurumap_ke -W hurumap_ke
```

Start the server:
```
python manage.py runserver
```

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

### Tests

?

---

## License

MIT 
