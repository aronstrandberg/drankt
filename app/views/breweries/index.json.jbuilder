json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :country
  json.url brewery_url(brewery, format: :json)
end
