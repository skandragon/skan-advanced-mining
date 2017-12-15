
local protodrill = {
    type = "mining-drill",
    name = "skan-advanced-mining-drill",
    icon = "__skan-advanced-mining__/graphics/mining-drills/advanced-mining-drill.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "skan-advanced-mining-drill"},
    max_health = 600,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__skan-advanced-mining__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__skan-advanced-mining__/graphics/entity/electric-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__skan-advanced-mining__/graphics/entity/electric-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__skan-advanced-mining__/graphics/entity/electric-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__skan-advanced-mining__/graphics/entity/electric-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 0.8,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.072 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    mining_power = 3.5,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__skan-advanced-mining__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    fast_replaceable_group = "mining-drill"
}

local function make_drill(name, health, emissions_factor, mining_speed, mining_power, watts, search_radius, slots)
    local drill = util.table.deepcopy(protodrill)
    drill.name = "skan-" .. name .. "-mining-drill"
    drill.icon = "__skan-advanced-mining__/graphics/mining-drills/" .. name .. "-mining-drill.png"
    drill.minable.result = "skan-" .. name .. "-mining-drill"
    drill.max_health = health
    drill.mining_speed = mining_speed
    drill.mining_power = mining_power
    drill.energy_usage = watts
    drill.energy_source.emissions = emissions_factor * 1.5
    drill.resource_searching_radius = search_radius
    drill.module_specification.module_slots = slots
    return drill
end

data:extend({
    make_drill("advanced",  600, 0.072, 1.0, 4.0, "180kW", 2.49, 3),
    make_drill("elite",     900, 0.038, 2.0, 5.0, "210kW", 3.49, 4),
    make_drill("ultimate", 1200, 0.018, 3.0, 6.0, "300kW", 3.49, 4)
})
