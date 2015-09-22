require 'json'
require 'pp'

jsonPath = "#{Rails.root}/db/JSONDumps"
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


m = allData['moves'].drop(1)

m.each do |move|
	Move.create(
		name: 				move['name'],
		types: 				move['type'],
		pp: 					move['pp'],
		power: 				move['power'],
		accuracy: 		move['accuracy'],
		category: 		move['category'],
		damage: 			move['damage'],
		description: 	move['description']
	)
	puts "Created move, #{move['name']}"
end

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
