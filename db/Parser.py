#Uses CSS selectors to traverse DOM and organize Fruit DB
#Makes compatible with Rails seed data

from bs4 import BeautifulSoup
import os
import urllib2



#parses table ftom TradeWinds to get fruit data
url = 'http://pokemondb.net/pokedex/all'
content = urllib2.urlopen(url).read()

mainContent= BeautifulSoup(content)


#print mainContent.prettify()

section = mainContent.find_all('tr')

class Pokemon:
	def __init__(self, number, name, type1, hp, atk, dfn, spatk, spdef, spe,  form=None,type2=None):
		self.number = number
		self.name = name
		self.form = form
		self.type1 = type1
		self.type2 = type2
		self.hp = hp
		self.atk = atk
		self.dfn = dfn
		self.spatk = spatk
		self.spdef = spdef
		self.spe = spe

def remove_html_markup(s):
    tag = False
    quote = False
    out = ""

    for c in s:
            if c == '<' and not quote:
                tag = True
            elif c == '>' and not quote:
                tag = False
            elif (c == '"' or c == "'") and tag:
                quote = not quote
            elif not tag:
                out = out + c

    return out




pokemon = {}
raw = []
pokenum =0
for tr in section:
	tdList = tr.find_all("td")
	attributes = []
	for td in tdList:
		for e in td:
			attributes.append(remove_html_markup(str(e)))
	pokenum +=1
	raw.append(attributes)

types = ['normal', 'fire', 'water', 'electric', 'grass', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'dark', 'steel', 'fairy']

raw = filter(None, raw)
pokenum =1
for mon in raw:
	print "______________________________-"
	mon = filter(None, mon)
	print len(mon)
	# print mon
	#pokemon[pokenum] = Pokemon( number = pokenum, name, form, type1, type2, hp, atk, dfn, spatk, spdef, spe)
	if mon[2].lower() in types:
		#pokemon is normal form
		if mon[3].lower() in types:
			#Pokemon has 2 types
			pokemon[pokenum] = Pokemon( number = mon[0].strip(' '), name = mon[1], type1 = mon[2], type2 = mon[3], hp = mon[5], atk = mon[6], dfn= mon[7], spatk = mon[8], spdef = mon[9], spe = mon[10] )
		else:
			#pokemon has 1 type
			pokemon[pokenum] = Pokemon( number = mon[0].strip(' '), name = mon[1], type1 = mon[2], hp = mon[4], atk = mon[5], dfn= mon[6], spatk = mon[7], spdef = mon[8], spe = mon[9] )
	elif mon[4].lower() in types:
		#pokemon is alternate form, 2 types
		pokemon[pokenum] = Pokemon( number = mon[0].strip(' '), name = mon[1],form = mon[2], type1 = mon[3], type2 = mon[4], hp = mon[6], atk = mon[7], dfn= mon[8], spatk = mon[9], spdef = mon[10], spe = mon[11] )
	else:
		#pokemon is alternate form, 1 type
		pokemon[pokenum] = Pokemon( number = mon[0].strip(' '), name = mon[1],form = mon[2], type1 = mon[3], hp = mon[5], atk = mon[6], dfn= mon[7], spatk = mon[8], spdef = mon[9], spe = mon[10] )
	pokenum +=1


for num in pokemon:
	print pokemon[num].name, pokemon[num].type1, pokemon[num].type2



f = open("seeds.rb", 'w')
f.write('pokemons = Pokemon.create([')
for num in pokemon:
	f.write("\n\t{number:   %d, name: '%s', form: '%s',  type1: '%s',type2: '%s', hp: %d, atk: %d, def: %d, spatk: %d, spdef: %d, spe: %d}," %(int(pokemon[num].number),pokemon[num].name, pokemon[num].form, pokemon[num].type1, pokemon[num].type2,int(pokemon[num].hp),int(pokemon[num].atk), int(pokemon[num].dfn), int(pokemon[num].spatk), int(pokemon[num].spdef), int(pokemon[num].spe)))

f.write('])')
f.close()




















#
