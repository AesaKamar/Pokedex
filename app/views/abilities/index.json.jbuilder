json.array!(@abilities) do |ability|
  json.extract! ability, :id, :number, :name, :description, :shortdescription
  json.url ability_url(ability, format: :json)
end
