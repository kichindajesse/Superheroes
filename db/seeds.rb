# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Heroes
# Heroes
Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

# Powers
Power.create(name: 'Super Strength', description: 'Gives the wielder super-human strength')
Power.create(name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed')
Power.create(name: 'Invisibility', description: 'Allows the wielder to become invisible at will')

# Hero Powers
HeroPower.create(hero_id: 1, power_id: 1, strength: 'Strong')
HeroPower.create(hero_id: 1, power_id: 2, strength: 'Average')
HeroPower.create(hero_id: 2, power_id: 3, strength: 'Weak')

