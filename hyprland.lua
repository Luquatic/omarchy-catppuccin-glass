hl.curve("water", { type = "bezier", points = { { 0.22, 0.9 }, { 0.36, 1.0 } } })
hl.curve("flow", { type = "bezier", points = { { 0.25, 0.1 }, { 0.25, 1.0 } } })
hl.curve("ripple", { type = "bezier", points = { { 0.33, 0.0 }, { 0.2, 1.0 } } })
hl.curve("stream", { type = "bezier", points = { { 0.4, 0.0 }, { 0.4, 1.0 } } })
hl.curve("cascade", { type = "bezier", points = { { 0.19, 1.0 }, { 0.22, 1.0 } } })
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.0, bezier = "water" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2.8, bezier = "cascade" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.4, bezier = "stream" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1.6, bezier = "flow" })
hl.animation({ leaf = "fade", enabled = true, speed = 2.4, bezier = "water" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.0, bezier = "cascade" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "ripple" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 2.0, bezier = "water" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 1.4, bezier = "flow" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = false })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1.5, bezier = "overshot", style = "popin 80%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.3, bezier = "md3_accel", style = "popin 90%" })
hl.animation({ leaf = "layers", enabled = true, speed = 1.5, bezier = "md3_standard" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "easeOutQuint", style = "slidevert" })

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 2,
		col = { active_border = "rgba(ffffff69)", inactive_border = "rgba(1a1a1a60)" },
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 4,
		rounding_power = 4.0,
		dim_inactive = false,

		shadow = {
			enabled = true,
			range = 2,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		blur = {
			size = 10,
			passes = 3,
			xray = false,
			noise = 0,
			contrast = 1,
			brightness = 0.85,
		},
	},

	animations = {
		enabled = true,
	},

	group = {
		col = {
			border_active = "rgba(ffffff69)",
			border_inactive = "rgba(1a1a1a60)",
			border_locked_active = { colors = { "rgba(ff990088)", "rgba(ff990022)" }, angle = 90 },
			border_locked_inactive = "rgba(3a3a3a77)",
		},
		groupbar = {
			font_size = 10,
			font_family = "monospace",
			font_weight_active = "ultraheavy",
			font_weight_inactive = "normal",

			indicator_height = 0,
			indicator_gap = 5,
			height = 22,
			gaps_in = 3,
			gaps_out = 3,

			text_color = "#fff",
			text_color_inactive = "rgba(ffffff90)",
			col = {
				active = "rgba(00000040)",
				inactive = "rgba(00000020)",
			},
			gradients = true,
			gradient_rounding = 0,
			gradient_round_only_edges = false,
		},
	},
})

hl.layer_rule({
	match = { namespace = "walker" },
	no_anim = true,
	blur = true,
	ignore_alpha = 0.1,
})

hl.layer_rule({
	match = { namespace = "waybar" },
	blur = true,
	ignore_alpha = 0.1,
})

hl.layer_rule({
	match = { namespace = "notifications" },
	blur = true,
	ignore_alpha = 0.2,
})

hl.layer_rule({
	match = { namespace = "swayosd" },
	blur = true,
})
