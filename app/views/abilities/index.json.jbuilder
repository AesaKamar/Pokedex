json.array!(@abilities) do |ability|
  json.extract! ability, :id, :number, :name, :description, :Short, :description
  json.url ability_url(ability, format: :json)
end
