json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :brand, :category, :price, :available, :country, :volume, :alcohol_percentage
  json.url beer_url(beer, format: :json)
end
