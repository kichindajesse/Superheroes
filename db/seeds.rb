
 puts "start seeding"
# create some powers
power1 = Power.create(name: "Flight", description: "Ability to fly")
power2 = Power.create(name: "Super strength", description: "Unmatched physical strength")
power3 = Power.create(name: "Invisibility", description: "Ability to become invisible")

# create some heroes
hero1 = Hero.create(name: "Clark Kent", super_name: "Superman")
hero2 = Hero.create(name: "Diana Prince", super_name: "Wonder Woman")
hero3 = Hero.create(name: "Bruce Wayne", super_name: "Batman")

# assign some powers to heroes
HeroPower.create(strength: "10", hero: hero1, power: power1)
HeroPower.create(strength: "8", hero: hero1, power: power2)
HeroPower.create(strength: "6", hero: hero2, power: power2)
HeroPower.create(strength: "9", hero: hero2, power: power3)
HeroPower.create(strength: "7", hero: hero3, power: power1)
HeroPower.create(strength: "5", hero: hero3, power: power3)

puts "d seeding"