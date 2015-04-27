jsonPath = "#{Rails.root}/db/WHATEVER.json"

pokemon = JSON.parse(File.read(jsonPath))
