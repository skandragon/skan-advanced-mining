data:extend({

  {
    type = "recipe",
    name = "skan-advanced-mining-drill",
    energy_required = 5,
	enabled = false,
    ingredients =
    {
	  {"electric-mining-drill", 4},
      {"electronic-circuit", 10},
	  {"advanced-circuit", 1},
      {"iron-gear-wheel", 15},
      {"iron-plate", 25}
    },
    result = "skan-advanced-mining-drill"
  },
  {
    type = "recipe",
    name = "skan-elite-mining-drill",
    energy_required = 15,
	enabled = false,
    ingredients =
    {
      {"skan-advanced-mining-drill", 4},
	  {"advanced-circuit", 10},
      {"iron-gear-wheel", 40},
      {"iron-plate", 50}
    },
    result = "skan-elite-mining-drill"
  },
  {
    type = "recipe",
    name = "skan-ultimate-mining-drill",
    energy_required = 20,
	enabled = false,
    ingredients =
    {
      {"skan-elite-mining-drill", 4},
	  {"advanced-circuit", 20},
	  {"processing-unit", 5},
      {"iron-gear-wheel", 50},
    },
    result = "skan-ultimate-mining-drill"
  },
})
