#!/usr/bin/env python
from __future__ import print_function
import sys
import errno
import json
import os
from lxml import html
import requests

with open('towndistrictcodemapping.json') as json_data:
    code = json.load(json_data,)

with open('towndistrictlevelmapping.json') as json_data:
    level = json.load(json_data,)

initUrl = 'http://land.agrids.co.za/Statistics/Distribution'

try:
    url = initUrl
    #get the result of the initial page
    initPage = requests.get(url, allow_redirects = False)
    #tree contains the whole html
    tree = html.fromstring(initPage.content)

    #open file and write header
    csv = open("agrid_distribution.csv", "w")
    columnHeader = "geo_level, geo_code, geo_version, class, name, statistic, total\n"
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

        provtable = provTree.xpath('//table')
        #table  header
        provth = provTree.xpath('//table//tr/th')

        provthlen = len(provth)

        #loop through columns
        for j in range(1, provthlen):
            statistic = provth[j].text_content().encode('utf-8').strip()

            provRow = provTree.xpath('//table//tr')
            provRowLen = len(provRow)
            #loop through row: start at row number 2 as row number one is heading
            for i in range (2, provRowLen+1):
                #in each row get the cells
                row = geo_level + "," + geo_code + "," + geo_version + ","
                provRowTD = provTree.xpath('//table//tr[%d]/td' %  i)
                row += provRowTD[0].text_content().encode('utf-8').strip() + ","+ name + "," + statistic
                row += "," + provRowTD[j].text_content().encode('utf-8').strip() + "\n"
                csv.write(row)
                row = ""


        if provId == '':
            #get all districts
            districtIds = provTree.xpath("//select[@id='DistrictId']/option/@value")
    	    districtNames = provTree.xpath("//select[@id='DistrictId']/option/text()")

            #skip the first drop down value
    	    districtIds = districtIds[1:]
            districtNames = districtNames[1:]
            z = 0
            for distId in districtIds:
            	distPage = requests.get(initUrl + '?Province='+ provId+ '&DistrictId='+distId+'&Calculate=Calculate', allow_redirects = False)
            	distTree = html.fromstring(distPage.content)

            	districtName = districtNames[z].replace(' ', '').replace('/', '')
                disName = districtNames[z]
                z = z + 1

                geo_code = code[districtName]
                geo_level = level[districtName]
            	#save table on provinces table
            	disttable = distTree.xpath('//table')
                #disttable table  header
                distTreeTH = distTree.xpath('//table//tr/th')

                distTreeTHLen = len(distTreeTH)

                for x in range(1, distTreeTHLen):
                    dis_statistic = distTreeTH[x].text_content().strip()

                    distRow = distTree.xpath('//table//tr')
                    distRowLen = len(distRow)

                    #loop through row: start at row number 2 as row number one is heading
                    for y in range (2, distRowLen+1):
                        #in each row get the cells
                        disrow = geo_level + "," + geo_code + "," + geo_version + ","
                        distRowTD = distTree.xpath('//table//tr[%d]/td' %  y)

                        thisclass =  distRowTD[0].text_content().replace(' ', '')
                        disrow = disrow + thisclass + "," + disName
                        disrow += "," + dis_statistic
                        disrow += "," + distRowTD[x].text_content().strip() + "\n"
                        disrow = disrow.encode(encoding='UTF-8',errors='strict')
                        csv.write(disrow)
                        disrow = ""

                print("Finished ", disName)
            print("Finished ", provId)

except:
	print("Unexpected error:", sys.exc_info())
	print("Oops, something went wrong")


sys.exit()
