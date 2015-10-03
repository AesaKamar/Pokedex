require 'json'
require 'pp'

jsonPath = "#{Rails.root}/db/JSONDumps/"
# jsonPath = "./pokedex_final.json"


abilities = JSON.parse(File.read(jsonPath + 'abilities.json'))['abilities'].drop(1)
abilities.each do |ability|
	Ability.create(
		name: 					ability['name'],
		description: 		ability['description']
	)
	puts "Created ability, #{ability['name']}"

end
puts "\nPASSING ABILITIES\n"


moves = JSON.parse(File.read(jsonPath + 'moves.json'))['moves'].drop(1)
moves.each do |move|
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

pokemon = JSON.parse(File.read(jsonPath + 'pokemon.json'))['pokemon']
pokemon.each do |poke|
	Pokemon.create(
		number: 					poke['number'],
		name: 						poke['name'],
		species: 					poke['species'],
		types: 						poke['types'],
		abilities: 				poke['abilities'],
		genderThreshold: 	poke['genderThreshold'],
		catchRate: 				poke['catchRate'],
		eggGroups: 				poke['eggGroup'],
		hatchCounter: 		poke['hatchCounter'],
		height: 					poke['height'],
		weight: 					poke['weight'],
		baseExpYield: 		poke['baseExpYield'],
		baseFriendship: 	poke['baseFriendship'],
		expGroup: 				poke['expGroup'],
		evYield: 					poke['evYield'],
		bodyStyle: 				poke['bodyStyle'],
		color: 						poke['color'],
		baseStats: 				poke['baseStats'],
		pokedexX: 				poke['pokedexX'],
		pokedexY: 				poke['pokedexY'],
		pokedexOR: 				poke['pokedexOR'],
		pokedexAS: 				poke['pokedexAS'],
		learnset: 				poke['learnset'].to_json
	)
	puts "Created Pokemon, #{poke['name']}"
end

types = JSON.parse(File.read(jsonPath + 'types.json'))['types'].drop(1)
types.each do |type|
	Type.create(
		 name: 					type['name'],
     number: 				type['number'],
     offense:       type['offense'],
     defense:       type['defense']
	)
	puts "Created Type, #{type['name']}"
end

# TODO fix array structure type mismatch like 'abilities'
