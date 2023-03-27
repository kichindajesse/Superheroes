
Hero.destroy_all 
Power.destroy_all 
HeroPower.destroy_all 

#Heroes

iron_man = Hero.create(name:"Tony Stark", super_name:"Iron Man")
captain_america = Hero.create(name:"Steve Rogers", super_name:"Captain America")
thor = Hero.create(name:"Thor Odinson", super_name:"Thor")
hulk = Hero.create(name:"Bruce Banner", super_name:"Hulk")
spider_man = Hero.create(name:"Peter Parker", super_name:"Spider-Man")

#powers

flight = Power.create(name:"Flight", description:"Ability to fly using rocket boots and armor.")
super_strength = Power.create(name:"Super Strength", description:"Incredible physical strength.")
lightning = Power.create(name:"Lightning", description:"Can summon bolts of lightning.")
regeneration = Power.create(name:"Regeneration", description:"Can heal from most injuries quickly.")
web_slinging = Power.create(name:"Web-Slinging", description:"Shoots webs from hands and swings through the city.")

#heropowers

HeroPower.create(strength: "Strong", hero_id: iron_man.id, power_id: flight.id)
HeroPower.create(strength: "Strong", hero_id: captain_america.id, power_id: super_strength.id)
HeroPower.create(strength: "Strong", hero_id: thor.id, power_id: lightning.id)
HeroPower.create(strength: "Strong", hero_id: hulk.id, power_id: regeneration.id)
HeroPower.create(strength: "Average", hero_id: spider_man.id, power_id: web_slinging.id)

puts "Done seeding" 
