data:extend({

  {
    type = "recipe",
    name = "advanced-mining-drill",
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
    result = "advanced-mining-drill"
  },
  {
    type = "recipe",
    name = "elite-mining-drill",
    energy_required = 15,
	enabled = false,
    ingredients =
    {
      {"advanced-mining-drill", 4},
	  {"advanced-circuit", 10},
      {"iron-gear-wheel", 40},
      {"iron-plate", 50}
    },
    result = "elite-mining-drill"
  },
  {
    type = "recipe",
    name = "ultimate-mining-drill",
    energy_required = 20,
	enabled = false,
    ingredients =
    {
      {"elite-mining-drill", 4},
	  {"advanced-circuit", 20},
	  {"processing-unit", 5},
      {"iron-gear-wheel", 50},
    },
    result = "ultimate-mining-drill"
  },
})