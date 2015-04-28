require 'json'
require 'pp'

jsonPath = "#{Rails.root}/db/pokedex_final.json"
# jsonPath = "./pokedex_final.json"

allData = JSON.parse(File.read(jsonPath))


a = allData['abilities'].drop(1)
a.each do |ability|
	Ability.create(
		name: 					ability['name'],
		description: 		ability['description']
	)
	puts "Created ability, #{ability['name']}"
end



puts "\nPASSING ABILITIES\n"


allData['pokemon'].each do |pokemon|
# 	#get ability array for that pokemon
# 	abs = pokemon['abilities']
# 	abs.map!{ |element|
# 		Ability.find(element)
# 	}


	Pokemon.create(
		number: 					pokemon['number'],
		name: 						pokemon['name'],
		species: 					pokemon['species'],
		types: 						pokemon['types'],
		abilities: 				pokemon['abilities'],
		genderThreshold: 	pokemon['genderThreshold'],
		catchRate: 				pokemon['catchRate'],
		eggGroups: 				pokemon['eggGroup'],
		hatchCounter: 		pokemon['hatchCounter'],
		height: 					pokemon['height'],
		weight: 					pokemon['weight'],
		baseExpYield: 		pokemon['baseExpYield'],
		baseFriendship: 	pokemon['baseFriendship'],
		expGroup: 				pokemon['expGroup'],
		evYield: 					pokemon['evYield'],
		bodyStyle: 				pokemon['bodyStyle'],
		color: 						pokemon['color'],
		baseStats: 				pokemon['baseStats'],
		pokedexX: 				pokemon['pokedexX'],
		pokedexY: 				pokemon['pokedexY'],
		pokedexOR: 				pokemon['pokedexOR'],
		pokedexAS: 				pokemon['pokedexAS'],
		learnset: 				pokemon['learnset'].to_json
	)
	puts "Created Pokemon, #{pokemon['name']}"
end

# TODO fix array structure type mismatch like 'abilities'
