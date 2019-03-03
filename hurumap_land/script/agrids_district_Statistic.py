from __future__ import print_function
import sys
import errno
import json
import os
from lxml import html
import requests

initUrl = 'http://land.agrids.co.za/Statistics?Province=&Calculate=Calculate'

Data_URLs = []
try:
        #get the result of the initial page
        initPage = requests.get(initUrl, allow_redirects = False)

        #tree contains the whole html
        tree = html.fromstring(initPage.content)

	statistictable = tree.xpath('//table')

	staticfile = "district_agrids_statistic.csv"

	csv = open(staticfile, "w")

        tableTitle = tree.xpath('//h2')

        print(tableTitle[0].text_content())

        csv.write(tableTitle[0].text_content() + "\n")

        #table  header
        disttableTH = tree.xpath('//table//tr/th')

        columnHeader = ""
        for distTH in disttableTH:
        	columnHeader = columnHeader + distTH.text_content().encode('utf-8').strip() + ", "

        columnHeader = columnHeader + "\n"
        csv.write(columnHeader)

        #disttable table row
        disttableTR = tree.xpath('//table//tr')
        disttableTRLen = len(disttableTR)
        for i in range (2, disttableTRLen+1):
        	disttableTD = tree.xpath('//table//tr[%d]/td' %  i)
                row = ""
                for distTD in disttableTD:
               		row = row + distTD.text_content().encode('utf-8').strip() + ", "
                row = row + "\n"
                csv.write(row)

except:
	print("Unexpected error:", sys.exc_info())
	print("Oops, something went wrong")


sys.exit()
