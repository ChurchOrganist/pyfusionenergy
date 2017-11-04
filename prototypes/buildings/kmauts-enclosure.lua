local Prototype = require("stdlib.prototype.prototype")

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "kmauts-enclosure",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
        {"pipe", 10}, --pyindustry niobium-pipe
        {"assembling-machine-3", 2},
		{"gasifier", 2},
        {"nexelit-plate", 30},
        {"steel-plate", 40},
        {"iron-gear-wheel", 30}, --updated-bob nitinol-bearing
		--add glass

    },
    result= "kmauts-enclosure",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "kmauts-enclosure",
    icon = "__pyfusionenergy__/graphics/icons/kmauts-enclosure.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "d",
    place_result = "kmauts-enclosure",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "kmauts-enclosure",
    icon = "__pyfusionenergy__/graphics/icons/kmauts-enclosure.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "kmauts-enclosure"},
    fast_replaceable_group = "kmauts-enclosure",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.6, -4.6}, {4.6, 4.6}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    module_specification =
    {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"kmauts"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01,
    },
    energy_usage = "200kW",
    ingredient_count = 5,

    animation ={
        layers={
            --TERRAIN
			{
                filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/layer-1.png",
                width = 338,
                height = 357,
                --line_length = 9,
                frame_count = 1,
                shift = {0.248, -0.591},
				priority = "low",
                --animation_speed = 0.75,
            },
			--WALLS
            {
                filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/layer-2.png",
                width = 338,
                height = 357,
                --line_length = 9,
                frame_count = 1,
                shift = {0.248, -0.591},
				priority = "low",
                --animation_speed = 0.75,
            },
			--TREE
            {
                filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/layer-3.png",
                width = 338,
                height = 357,
                --line_length = 9,
                frame_count = 1,
                shift = {0.248, -0.591},
				priority = "extra-high",
                --animation_speed = 0.75,
            },
        }
    },
	working_visualisations =
	{
	--PASTA1
		{
			north_position = {0.002, 0.749},
			west_position = {0.002, 0.749},
			south_position = {0.002, 0.749},
			east_position = {0.002, 0.749},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/pasta1.png",
				frame_count = 200,
				width = 62,
				height = 80,
				line_length = 32,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--UNDER TREE
		{
			north_position = {-1.127, -2.747},
			west_position = {-1.127, -2.747},
			south_position = {-1.127, -2.747},
			east_position = {-1.127, -2.747},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/undertree.png",
				frame_count = 180,
				width = 66,
				height = 45,
				line_length = 31,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--PASTA2
		{
			north_position = {2.56, -1.403},
			west_position = {2.56, -1.403},
			south_position = {2.56, -1.403},
			east_position = {2.56, -1.403},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/pasta2.png",
				frame_count = 200,
				width = 64,
				height = 96,
				line_length = 32,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--SENTA
		{
			north_position = {2.123, 0.284},
			west_position = {2.123, 0.284},
			south_position = {2.123, 0.284},
			east_position = {2.123, 0.284},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/senta.png",
				frame_count = 200,
				width = 64,
				height = 96,
				line_length = 32,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--PUP
		{
			north_position = {1.279, 0.877},
			west_position = {1.279, 0.877},
			south_position = {1.279, 0.877},
			east_position = {1.279, 0.877},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/pup.png",
				frame_count = 180,
				width = 64,
				height = 64,
				line_length = 32,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--TOP
		{
			north_position = {-0.877, -0.966},
			west_position = {-0.877, -0.966},
			south_position = {-0.877, -0.966},
			east_position = {-0.877, -0.966},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/top.png",
				frame_count = 180,
				width = 75,
				height = 86,
				line_length = 27,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--BOT
		{
			north_position = {2.81, 2.252},
			west_position = {2.81, 2.252},
			south_position = {2.81, 2.252},
			east_position = {2.81, 2.252},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/bot.png",
				frame_count = 180,
				width = 64,
				height = 64,
				line_length = 32,
				animation_speed = 0.3,
				priority = "medium",
			}
		},
	--TREE
		{
			north_position = {0.248, -0.591},
			west_position = {0.248, -0.591},
			south_position = {0.248, -0.591},
			east_position = {0.248, -0.591},
			animation =
			{
				filename = "__pyfusionenergy__/graphics/entity/kmauts-enclosure/overlayer.png",
				frame_count = 1,
				width = 338,
				height = 357,
				--line_length = 31,
				--animation_speed = 0.3,
				priority = "extra-high",
			}
		},
	},

    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/kmauts-enclosure.ogg", volume = 1.5 },
        idle_sound = { filename = "__pyfusionenergy__/sounds/kmauts-enclosure.ogg", volume = 0.8 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end