import json
import io
import ast
from pprint import pprint

'''
Method to turn the appropriate substrings into quoted substrings
to be used as dictionary keys
'''
def colonSplicer(inStr):
	start = 0
	end = 0
	for x in inStr:
		if x == ',' or x == '{':
			start = end+1
			end += 1
			continue
		if x == ':':
			inStr = inStr[:start]+'\"'+inStr[start:end] + '\"'+inStr[end:]
			start = end+3
			end+=3
		else: end += 1
	return inStr


with open("pokedex.txt",'r') as f:
	data = f.readlines()
data2 = []
for x in data:
	data2.append(colonSplicer(x).replace(';',''))

with open('pokedexData.json','w') as out:
	out.writelines(data2)

with open("pokedexData.json") as check:
	d = json.load(check)
pprint(d)