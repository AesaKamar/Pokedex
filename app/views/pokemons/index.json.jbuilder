json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :number, :name, :type1, :type2, :entry
  json.url pokemon_url(pokemon, format: :json)
end
