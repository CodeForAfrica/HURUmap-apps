#!/usr/bin/env python
from __future__ import print_function
import sys
import errno
import json
import os
from lxml import html
import re
import requests

with open('towndistrictcodemapping.json') as json_data:
    code = json.load(json_data,)

with open('towndistrictlevelmapping.json') as json_data:
    level = json.load(json_data,)

initUrl = 'http://land.agrids.co.za/Statistics/Summary'

try:
    url = initUrl
    #get the result of the initial page
    initPage = requests.get(url, allow_redirects = False)
    #tree contains the whole html
    tree = html.fromstring(initPage.content)

    #open file and write header
    csv = open("agrid_summary_color_distribution.csv", "w")
    columnHeader = "geo_level, geo_code, geo_version, month, statistic, total\n"
    csv.write(columnHeader)

    #initialize params
    geo_code = ''
    geo_level = ''
    geo_version = '2016'

    #provinces
    provinceIds = tree.xpath("//select[@id='Province']/option/@value")
    provinceNames = tree.xpath("//select[@id='Province']/option/text()")

    #province geo_code map
    provinceCode = {'': 'ZA', 'EasternCape':'EC', 'FreeState':'FS', 'Gauteng':'GT',
     'KwaZuluNatal':'KZN', 'Limpopo':'LIM', 'Mpumalanga':'MP',
      'NorthernCape':'NC', 'NorthWest':'NW', 'WesternCape':'WC'}
    provinceLevel = { '': 'country', 'EasternCape':'province',
     'FreeState':'province', 'Gauteng':'province', 'KwaZuluNatal':'province',
     'Limpopo':'province', 'Mpumalanga':'province', 'NorthernCape':'province',
     'NorthWest':'province', 'WesternCape':'province'}
    m = 0
    for provId in provinceIds:
    	provPage = requests.get(url + '?Province='+ provId+ '&Calculate=Calculate', allow_redirects = False)
    	provTree = html.fromstring(provPage.content)

        name = provinceNames[m]
        m = m + 1
        geo_code = provinceCode[provId]
        geo_level = provinceLevel[provId]

        #table  header
        provth = provTree.xpath('//table[3]//tr[1]/th')

        provthlen = len(provth)

        #loop through columns
        for j in range(1, provthlen):
            statistic = provth[j].text_content().strip()

            print(statistic)

            provRow = provTree.xpath('//table[3]//tr')
            provRowLen = len(provRow)
            #loop through row: start at row number 2 as row number one is heading
            for i in range (4, provRowLen+1):
                #in each row get the cells
                row = geo_level + "," + geo_code + "," + geo_version + ","
                provRowTD = provTree.xpath('//table[3]//tr[%d]/td' %  i)
                print("I am here")
                print(provId)
                print(provRowTD[0].text_content())
                row += provRowTD[0].text_content().encode('utf-8').strip() + "," + statistic
                val = provRowTD[j].text_content().encode('utf-8').strip()
                val = re.sub('\(\d*%\)', '', val)
                print(val)
                row += "," + val + "\n"
                csv.write(row)
                row = ""

except:
	print("Unexpected error:", sys.exc_info())
	print("Oops, something went wrong")


sys.exit()

 #\copy land_traded_colour_t_breakdown_2018 from '/home/khadija/Desktop/dev/HURUmap-apps/hurumap_land/script/agrid_summary_color_cost_distribution.csv' with delimiter as ',' null as '' header csv;
