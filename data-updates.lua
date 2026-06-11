

for _,planet in pairs(data.raw["planet"]) do
    PlanetsLib.create_planet_entity_variant(planet.name,data.raw["assembling-machine"]["chemical-plant"],{crafting_speed = math.random(1,50)})
end
