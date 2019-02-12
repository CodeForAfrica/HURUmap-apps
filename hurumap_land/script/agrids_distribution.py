import sys
import errno
import json
import os
from lxml import html
import requests

initUrl = 'http://land.agrids.co.za/Statistics/Distribution'

try:
    url = initUrl
    #get the result of the initial page
    initPage = requests.get(url, allow_redirects = False)
    #tree contains the whole html
    tree = html.fromstring(initPage.content)


    geo_version = '2016'

    #provinces
    provinceIds = tree.xpath("//select[@id='Province']/option/@value")
    provinceNames = tree.xpath("//select[@id='Province']/option/text()")

    #provinceIds = provinceIds[1:]
    #provinceNames = provinceNames[1:]

    columnHeader = "geo_level, geo_code, geo_version, class, statistic, total\n"
    csv.write(columnHeader)

    geo_code = ''
    geo_level = ''
	
	

	
    for provId in provinceIds:
    	provPage = requests.get(url + '?Province='+ provId+ '&Calculate=Calculate', allow_redirects = False)
    	provTree = html.fromstring(provPage.content)

	if provId == '':
		geo_code = 'ZA'
		geo_level = 'country'
		provtable = provTree.xpath('//table')
		#table  header
                provth = provTree.xpath('//table//tr/th')

		provthlen = len(provth)

		columnHeader = ""
		for j in range(1, provthlen):
			columnHeader = geo_level + "," + geo_code + "," + geo_version + ","
			columnHeader = columnHeader + provth[0].text_content().encode('utf-8').strip() + ","+ provth[j].text_content().encode('utf-8').strip()  +"\n"

    	#get districts
    	districtIds = provTree.xpath("//select[@id='DistrictId']/option/@value")
    	districtNames = provTree.xpath("//select[@id='DistrictId']/option/text()")

    	districtIds = districtIds[1:]
    	districtNames = districtNames[1:]

    	z = 0
    	for distId in districtIds:
        	distPage = requests.get(url + '?Province='+ provId+ '&DistrictId='+distId+'&Calculate=Calculate', allow_redirects = False)
        	distTree = html.fromstring(distPage.content)

        	districtName = districtNames[z].replace(' ', '').replace('/', '')
        	#save table on provinces table
        	disttable = distTree.xpath('//table')

        	disttableLen = len(disttable)
        	if disttableLen >= 1:
            		for j in range (1, disttableLen+1):
                	

                tableTitle = distTree.xpath('//h2')
                print tableTitle[j -1].text_content()
                csv.write(tableTitle[j -1].text_content() + "\n")
                #disttable table  header
                distTreeTH = distTree.xpath('//table[%d]//tr/th' % j)
                columnHeader = ""
                for distTH in distTreeTH:
                    columnHeader = columnHeader + distTH.text_content() + ", "
                columnHeader = (columnHeader[:-2]).encode('utf-8').strip() + "\n"
                csv.write(columnHeader)

                #disttable table row
                distTreeTR = distTree.xpath('//table[%d]//tr' % j)
                distTreeTRLen = len(distTreeTR)
                for i in range (2, distTreeTRLen+1):
                    distTreeTD = distTree.xpath('//table[%d]//tr[%d]/td' % (j, i))
                    row = ""
                    for distTD in distTreeTD:
                        row = row + distTD.text_content() + ", "
                    row = (row[:-2]).encode('utf-8').strip() + "\n"
                    csv.write(row)

                print "Finished ", distCsvFileName
        print "Finished ", distId
        z = z + 1
	'''

except:
	print "Unexpected error:", sys.exc_info()
	print "Oops, something went wrong"


sys.exit()
