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
        brand: "Peroni",
        category: "Lager",
        price: 25,
        available: true,
        country: "Italy",
        volume: 330,
        alcohol_percentage: 5.3
    },
    {
        name: "K:rlek Höst/Vinter 2015",
        brand: "Mikkeller",
        category: "American Pale Ale",
        price: 30,
        available: true,
        country: "Denmark",
        volume: 330,
        alcohol_percentage: 5.6
    },
    {
        name: "Carlsberg non-alcoholic",
        brand: "Carlsberg",
        category: "Lager",
        price: 20,
        available: true,
        country: "Sweden",
        volume: 330,
        alcohol_percentage: 0.3
    },
    {
        name: "Spontanbasil",
        brand: "Lindemans / Mikkeller ",
        category: "Lambic",
        price: 65,
        available: true,
        country: "Denmark",
        volume: 700,
        alcohol_percentage: 5.5
    },
    {
        name: "Nebuchadnezzar",
        brand: "Omnipollo",
        category: "Imperial IPA",
        price: 35,
        available: true,
        country: "Sweden",
        volume: 330,
        alcohol_percentage: 8.5
    }
])

users = User.create([
    {
        first_name: "Aron",
        last_name: "Strandberg",
        email: "aron@aronstrandberg.com"
    },
    {
        first_name: "Shayan",
        last_name: "Effati",
        email: "shayan@effati.com"
    }
])
