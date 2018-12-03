import glob
import os
import pandas as pd


def batch_import_csv(paths):
    f = "python manage.py importcsv ./{} --table {} --geo_version 2014 --columns {}"
    for i in paths:
        df = pd.read_csv(i)
        cols = list(df.columns)
        command = f.format(i, cols[1], cols[1])
        print command
        os.system(command)

def create_blank_sql_files(paths):
    for path in paths:
        file_name = path.replace('.csv', '.sql')
        fname = file_name.replace('uganda/', './hurumap_ug/sql/')
        print fname
        f = open(fname, 'w')
        f.write('')
        f.close()




if __name__ == '__main__':
    paths = glob.glob("uganda/*.csv")

    # batch_import_csv(paths)

    create_blank_sql_files(paths)

# python manage.py importcsv uganda/own_radio.csv --table own_radio --geo_version 2014 --columns own_radio --dry-run

"""

for t in `ls hurumap_ug/sql/[a-z]*.sql`
do
    echo $t
    pg_dump "postgres://hurumap:hurumap_ug@localhost/hurumap_ug" \
        -O -c --if-exists -t $(basename $t .sql) \
      | egrep -v "(idle_in_transaction_session_timeout|row_security)" \
      > hurumap_ug/sql/$(basename $t .sql).sql
done

"""