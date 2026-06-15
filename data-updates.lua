

for _,planet in pairs(data.raw["planet"]) do
    if planet.name ~= "nauvis" then
        PlanetsLib.create_planet_entity_variant(planet.name,data.raw["assembling-machine"]["chemical-plant"],{crafting_speed = math.random(1,50)})
        PlanetsLib:update{
            {
                type = "planet",
                name = planet.name,
                special_properties = {
                    rocket_part_multiplier = planet.surface_properties["gravity"]/10
                }
            }
        }
    end
    
end
