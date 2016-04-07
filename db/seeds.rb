# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beers = Beer.create([
    {
        name: "Peroni",
        category: "Lager",
        price: 25,
        available: true,
        volume: 330,
        alcohol_percentage: 5.3
    },
    {
        name: "K:rlek Höst/Vinter 2015",
        category: "American Pale Ale",
        price: 30,
        available: true,
        volume: 330,
        alcohol_percentage: 5.6
    },
    {
        name: "Carlsberg non-alcoholic",
        category: "Lager",
        price: 20,
        available: true,
        volume: 330,
        alcohol_percentage: 0.3
    },
    {
        name: "Spontanbasil",
        category: "Lambic",
        price: 65,
        available: true,
        volume: 700,
        alcohol_percentage: 5.5
    },
    {
        name: "Nebuchadnezzar",
        category: "Imperial IPA",
        price: 35,
        available: true,
        volume: 330,
        alcohol_percentage: 8.5
    }
])

breweries = Brewery.create([
    {
        name: "Mikkeller",
        country: "Denmark",
        beers: [
            beers[3]
        ]
    },
    {
        name: "Omnipollo",
        country: "Sweden",
        beers: [
            beers[4]
        ]
    },
])
