
puts "seed starting"
hero_data = [
{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },
{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },
{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }
]

power_data = [
{ "id": 1, "name": "super strength", "description": "gives the wielder super-human strengths" },
{ "id": 2, "name": "flight", "description": "gives the wielder the ability to fly through the skies at supersonic speed" }
]

Create Heroes
hero_data.each do |hero|
Hero.create(hero)
end

Create Powers
power_data.each do |power|
Power.create(power)
end

Create HeroPowers
HeroPower.create(strength: "Average", power_id: 1, hero_id: 1)
HeroPower.create(strength: "Above Average", power_id: 2, hero_id: 1)
HeroPower.create(strength: "Average", power_id: 1, hero_id: 2)
HeroPower.create(strength: "Above Average", power_id: 2, hero_id: 3)
puts "done seeding"
