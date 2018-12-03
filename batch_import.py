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


if __name__ == '__main__':
    paths = glob.glob("uganda/*.csv")

    batch_import_csv(paths)

# python manage.py importcsv uganda/own_radio.csv --table own_radio --geo_version 2014 --columns own_radio --dry-run
