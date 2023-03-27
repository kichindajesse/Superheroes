
puts "start seeding"

# create some powers for the heroes
power1 = Power.create(name: "Batman", description: "Ability to fly high speed ")
power2 = Power.create(name: "Super strength", description: "Unmatched physical strength")
power3 = Power.create(name: "Invisibility", description: "Ability to become invisible")
power4 = Power.create(name: "Regeneration", description: "Ability to heal from injuries quickly")
power5 = Power.create(name: "Telekinesis", description: "Ability to move objects with the mind")
power6 = Power.create(name: "Weather control", description: "Ability to control the weather")

# heroes
hero1 = Hero.create(name: "Peter Parker", super_name: "Spider-Man")
hero2 = Hero.create(name: "Tony Stark", super_name: "Iron Man")
hero3 = Hero.create(name: "Thor Odinson", super_name: "Thor")
hero4 = Hero.create(name: "Bruce Banner", super_name: "The Hulk")
hero5 = Hero.create(name: "Steve Rogers", super_name: "Captain America")
hero6 = Hero.create(name: "Wanda Maximoff", super_name: "Scarlet Witch")

#  powers to heroes
HeroPower.create(strength: "9", hero: hero1, power: power1)
HeroPower.create(strength: "8", hero: hero1, power: power2)
HeroPower.create(strength: "6", hero: hero2, power: power2)
HeroPower.create(strength: "9", hero: hero2, power: power3)
HeroPower.create(strength: "10", hero: hero3, power: power2)
HeroPower.create(strength: "8", hero: hero3, power: power6)
HeroPower.create(strength: "10", hero: hero4, power: power2)
HeroPower.create(strength: "7", hero: hero4, power: power4)
HeroPower.create(strength: "8", hero: hero5, power: power2)
HeroPower.create(strength: "9", hero: hero5, power: power5)
HeroPower.create(strength: "10", hero: hero6, power: power5)
HeroPower.create(strength: "9", hero: hero6, power: power6)

puts "done seeding"
