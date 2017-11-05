HURUmap
=======

[HURUmap](https://hurumap.org) gives infomediaries like journalists and civic activists an easy ‘plug & play’ toolkit for finding and embedding interactive data visualisations into their storytelling.

The project is built on Wazimap, an open source platform by OpenUp and Media Monitoring Africa for making census data more understandable.


## Local development

1. Clone the repo
2. ``cd HURUmap``
3. ``virtualenv --no-site-packages env``
4. ``source env/bin/activate``
5. ``pip install -r requirements.txt``


You will need a Postgres database:

```
psql
create user hurumap_ke with password hurumap_ke;
create database hurumap_ke;
grant all privileges on database hurumap_ke to hurumap_ke;
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

When deploying with dokku set the `DJANGO_SETTINGS_MODULE` in the following way:

    dokku config:set hurumap-ke DJANGO_SETTINGS_MODULE=hurumap_ke.settings


### Checks

Dokku allows for checks that make sure you have [zero-downtime deployments](http://dokku.viewdocs.io/dokku/deployment/zero-downtime-deploys/). We currently only check for DB errors but should allow for better checks in the future.

### Development

* clone this repo
* install dependencies:

    pip install -r requirements.txt

* run the server
    
    python manage.py collectstatic
    python manage.py runserver

---

## Importing into HURUmap

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
    pg_dump "postgres://hurumap_ke@localhost/hurumap_ke" \
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
