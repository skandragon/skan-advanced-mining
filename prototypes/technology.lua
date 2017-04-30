data:extend({

  {
    type = "technology",
    name = "skan-advanced-mining-1",
    localized_name = "technology-name.skan-advanced-mining-1",
    localized_description = "technology-description.skan-advanced-mining-1",
    icon = "__Advanced-Drills__/graphics/mining-drills/advanced-mining-drill.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "skan-advanced-mining-drill"
      },
    },
    prerequisites = {"steel-processing", "oil-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "c-b-a"
  },
  {
    type = "technology",
    name = "skan-advanced-mining-2",
    localized_name = "technology-name.skan-advanced-mining-2",
    localized_description = "technology-description.skan-advanced-mining-2",
    icon = "__Advanced-Drills__/graphics/mining-drills/elite-mining-drill.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "skan-elite-mining-drill"
      },
    },
    prerequisites = {"skan-advanced-mining-1"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 25
    },
    order = "c-b-b",
	upgrade = true
  },
  {
    type = "technology",
    name = "skan-advanced-mining-3",
    localized_name = "technology-name.skan-advanced-mining-3",
    localized_description = "technology-description.skan-advanced-mining-3",
    icon = "__Advanced-Drills__/graphics/mining-drills/ultimate-mining-drill.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "skan-ultimate-mining-drill"
      },
    },
    prerequisites = {"skan-advanced-mining-2"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-b-c",
	upgrade = true
  }
})