json.array!(@moves) do |move|
  json.extract! move, :id, :name, :type, :pp, :power, :accuracy, :category, :damage, :description
  json.url move_url(move, format: :json)
end
