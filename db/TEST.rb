require 'json'
require 'pp'

# jsonPath = "#{Rails.root}/db/pokedex_final.json"
jsonPath = "./pokedex_final.json"

allData = JSON.parse(File.read(jsonPath))

allData['pokemon'].each do |pokemon|
  PP.pp pokemon["number"]
end


# allData['pokemon'].each do |pokemon|
#   Pokemon.create(
#     number: 					pokemon[number],
#     name: 						pokemon[name],
#     species: 					pokemon[species],
#     types: 						pokemon[types],
#     abilities: 				pokemon[abilities],
#     genderThreshold: 	pokemon[genderThreshold],
#     catchRate: 				pokemon[catchRate],
#     eggGroup: 				pokemon[eggGroup],
#     hatchCounter: 		pokemon[hatchCounter],
#     height: 					pokemon[height],
#     weight: 					pokemon[weight],
#     baseExpYield: 		pokemon[baseExpYield],
#     baseFriendship: 	pokemon[baseFriendship],
#     expGroup: 				pokemon[expGroup],
#     evYield: 					pokemon[evYield],
#     bodyStyle: 				pokemon[bodyStyle],
#     color: 						pokemon[color],
#     baseStats: 				pokemon[baseStats],
#     pokedexX: 				pokemon[pokedexX],
#     pokedexy: 				pokemon[pokedexY],
#     pokedexOR: 				pokemon[pokedexOR],
#     pokedexAS: 				pokemon[pokedexAS],
#     learnset: 				pokemon[learnset].to_
#   )
# end
