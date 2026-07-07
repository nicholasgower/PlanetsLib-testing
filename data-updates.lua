

for _,planet in pairs(data.raw["planet"]) do
    if planet.name ~= "nauvis" then
        PlanetsLib.create_planet_entity_variant(planet.name,data.raw["assembling-machine"]["chemical-plant"],{crafting_speed = math.random(1,50)},"enable-chemical-plant-replacement")
        PlanetsLib.set_special_properties(planet.name,{
                    --rocket_part_multiplier = planet.surface_properties["gravity"]/10,
                    rocket_lift_multiplier = 10/planet.surface_properties["gravity"]
                })
    end
    
end

PlanetsLib.create_planet_entity_variant("space-platform",data.raw["assembling-machine"]["chemical-plant"],{crafting_speed = math.random(1,50)},"enable-chemical-plant-replacement")

for entity_type,entity_table in pairs(data.raw) do
    if PlanetsLib.rro.contains({"assembling-machine","furnace"},entity_type) then
        for entity_name,entity_table in pairs(entity_table) do
            if not string.find(entity_name,"PlanetsLib") then
                 PlanetsLib.create_planet_entity_variant("nauvis",data.raw[entity_type][entity_name],{crafting_speed = data.raw[entity_type][entity_name].crafting_speed*1.5},"enable-chemical-plant-replacement")
            end
           
        end
        
    end
end

