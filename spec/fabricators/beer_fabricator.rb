require 'faker'

Fabricator(:beer, class_name: :'Beer') do
  name { Faker::Beer.name }
  category { Faker::Beer.style }
  price { (Faker::Number.between(20, 60) / 5.0).round * 5 }
  available { Faker::Boolean.boolean(0.8) }
  volume { (Faker::Number.between(300, 700)).round(-1) }
  alcohol_percentage { Faker::Beer.alcohol }
end
