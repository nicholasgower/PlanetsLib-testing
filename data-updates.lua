

for _,planet in pairs(data.raw["planet"]) do
    if planet.name ~= "nauvis" then
        PlanetsLib.create_planet_entity_variant(planet.name,data.raw["assembling-machine"]["chemical-plant"],{crafting_speed = math.random(1,50)},"enable-chemical-plant-replacement")
        PlanetsLib.set_special_properties(planet.name,{
                    --rocket_part_multiplier = planet.surface_properties["gravity"]/10,
                    rocket_lift_multiplier = 10/planet.surface_properties["gravity"]
                })
    end
    
end
