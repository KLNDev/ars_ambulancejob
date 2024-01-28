lib.locale()

Config                         = {}

Config.Debug                   = false

Config.ClothingScript          = 'illenium-appearance' -- 'illenium-appearance', 'fivem-appearance' ,'core' or false -- to disable
Config.EmsJobs                 = { "ambulance", "ems" }
Config.RespawnTime             = 0.1                     -- in minutes
Config.UseInterDistressSystem  = true
Config.WaitTimeForNewCall      = 5                     -- minutes

Config.ReviveCommand           = "revive"
Config.ReviveAreaCommand       = "revivearea"
Config.HealCommand             = "heal"
Config.HealAreaCommand         = "healarea"
Config.ReviveAllCommand        = "reviveall"

Config.AdminGroup              = "group.admin"

Config.MedicBagProp            = "xm_prop_x17_bag_med_01a"
Config.MedicBagItem            = "medicalbag"

Config.HelpCommand             = "911"
Config.RemoveItemsOnRespawn    = false

Config.BaseInjuryReward        = 150 -- changes if the injury value is higher then 1
Config.ReviveReward            = false

Config.ParamedicTreatmentPrice = 4000
Config.AllowAlways             = true        -- false if you want it to work only when there are only medics online

Config.AmbulanceStretchers     = 3           -- how many stretchers should an ambunalce have
Config.ConsumeItemPerUse       = 10          -- every time you use an item it gets used by 10%

Config.TimeToWaitForCommand    = 2           -- when player dies he needs to wait 2 minutes to do the ambulance command
Config.NpcReviveCommand        = "ambulance" -- this will work only when there are no medics online

Config.UsePedToDepositVehicle  = false       -- if false the vehicle will instantly despawns
Config.ExtraEffects            = true        -- false >> disables the screen shake and the black and white screen

Config.EmsVehicles             = {           -- vehicles that have access to the props (cones and ecc..)
	'ambulance',
	'ambulance2',
}

Config.DeathAnimations         = {
	["car"] = {
		dict = "veh@low@front_ps@idle_duck",
		clip = "sit"
	},
	["normal"] = {
		dict = "dead",
		clip = "dead_a"
	},
	["revive"] = {
		dict = "get_up@directional@movement@from_knees@action",
		clip = "getup_r_0"
	}
}


Config.Hospitals = {
	["phillbox"] = {
		paramedic = {
			model = "s_m_m_scientist_01",
			pos = vector4(301.8772, -591.0827, 42.2698, 342.5345),
		},
		bossmenu = {
			pos = vector3(310.8577, -569.5048, 43.1977),
			min_grade = 2,
		},
		zone = {
			pos = vec3(299.0, -585.28, 43.28), -- entré hopital ? 
			size = vec3(200.0, 200.0, 200.0), --- comprend pas 
		},
		blip = {
			enable = true,
			name = 'Pillbox',
			type = 61,
			scale = 1.0,
			color = 2,
			pos = vector3(308.96, -591.52, 43.28),
		},
		respawn = {
		{
			bedPoint = vector4(311.6224, -586.527, 43.1757, 68.9177),
			spawnPoint = vector4(311.3099, -587.8054, 42.2698, 304.2997)
		},
			-- {
			-- 	bedPoint = vector4(346.96, -590.64, 44.12, 338.0),
			-- 	spawnPoint = vector4(348.84, -583.36, 42.32, 68.24)
			-- },
		},
		stash = {
			-- ['ems_stash_1'] = {
			-- 	slots = 75,
			-- 	weight = 100, -- kg
			-- 	min_grade = 0,
			-- 	label = 'Coffre EMS',
			-- 	shared = true, -- false if you want to make everyone has a personal stash
			-- 	pos = vector3(298.019, -592.4852, 42.2699)
			-- }
		},
		pharmacy = {
			["ems_shop_1"] = {
				job = true,
				label = "Pharmacie",
				grade = 3, -- works only if job true
				pos = vector3(327.9921, -584.6025, 43.2703),
				blip = {
					enable = false,
					name = 'Pharmacie',
					type = 61,
					scale = 0.5,
					color = 2,
					pos = vector3(327.9921, -584.6025, 43.2703),
				},
				items = {
					{ name = 'medicalbag',    price = 15000 },
					{ name = 'bandage',       price = 300 },
					{ name = 'defibrillator', price = 50000 },
					{ name = 'tweezers',      price = 1000 },
					{ name = 'burncream',     price = 300 },
					{ name = 'suturekit',     price = 500 },
					{ name = 'icepack',       price = 100 },
				}
			},
		},
		garage = {
			['ems_garage_1'] = {
				pedPos = vector4(288.3957, -580.3573, 42.3787, 274.4872),
				model = 'csb_trafficwarden',
				spawn = vector4(293.3736, -582.0286, 42.9522, 343.4074),
				deposit = vector3(290.0338, -593.3348, 42.185),
				driverSpawnCoords = vector3(300.1494, -578.6815, 42.2608),

				vehicles = {
					{
						label = 'Ambulance',
						spawn_code = 'ambulance',
						min_grade = 0,
						modifications = {} -- es. {color1 = {255, 12, 25}}
					},
					{
						label = 'boss',
						spawn_code = 'lguard',
						min_grade = 3,
						modifications = {} -- es. {color1 = {255, 12, 25}}
					},
				}
			},
			['ems_garage_2'] = {
				pedPos = vector4(351.3887, -575.7391, 73.1643, 177.391),
				model = 'csb_trafficwarden',
				spawn = vector4(351.6314, -588.0982, 73.0634, 252.6358),
				deposit = vector3(351.7408, -587.8729, 74.1642),
				driverSpawnCoords = vector3(351.8341, -599.5225, 74.1642),

				vehicles = {
					{
						label = 'Buzzard',
						spawn_code = 'buzzard2',
						min_grade = 0,
						modifications = {} -- es. {color1 = {255, 12, 25}}
					},
					{
						label = 'Helicoptere d\'urgence',
						spawn_code = 'swift',
						min_grade = 3,
						modifications = {} -- es. {color1 = {255, 12, 25}}
					},
				}
			}
		},
		clothes = {
			enable = true,
			pos = vector4(300.7454, -597.4542, 42.2918, 298.0781),
			model = 'a_f_m_bevhills_01',
			male = {
				[1] = {
					['mask_1']    	= 0,
					['mask_2']    	= 0,
					['arms_1']      = 0,
					['arms_2']      = 0,
					['tshirt_1']  	= 15,
					['tshirt_2']  	= 0,
					['torso_1']   	= 86,
					['torso_2']   	= 0,
					['bproof_1']  	= 0,
					['bproof_2']  	= 0,
					['decals_1']  	= 0,
					['decals_2']  	= 0,
					['chain_1']   	= 0,
					['chain_2']   	= 0,
					['pants_1']   	= 10,
					['pants_2']   	= 2,
					['shoes_1']   	= 56,
					['shoes_2']   	= 0,
					['helmet_1']  	= 34,
					['helmet_2']  	= 0,
					['glasses_1'] 	= 34,
					['glasses_2'] 	= 1,
					['bag_1'] 		= 0,
					['bag_2'] 		= 0,
				},
				[2] = {
					['mask_1']    	= 0,
					['mask_2']    	= 0,
					['arms_1']      = 0,
					['arms_2']      = 0,
					['tshirt_1']  	= 15,
					['tshirt_2']  	= 0,
					['torso_1']   	= 86,
					['torso_2']   	= 0,
					['bproof_1']  	= 0,
					['bproof_2']  	= 0,
					['decals_1']  	= 0,
					['decals_2']  	= 0,
					['chain_1']   	= 0,
					['chain_2']   	= 0,
					['pants_1']   	= 10,
					['pants_2']   	= 2,
					['shoes_1']   	= 56,
					['shoes_2']   	= 0,
					['helmet_1']  	= 34,
					['helmet_2']  	= 0,
					['glasses_1'] 	= 34,
					['glasses_2'] 	= 1,
					['bag_1'] 		= 0,
					['bag_2'] 		= 0,
				},
			},
			female = {
				[1] = {
					['mask_1']    	= 0,
					['mask_2']    	= 0,
					['arms_1']      = 0,
					['arms_2']      = 0,
					['tshirt_1']  	= 15,
					['tshirt_2']  	= 0,
					['torso_1']   	= 86,
					['torso_2']   	= 0,
					['bproof_1']  	= 0,
					['bproof_2']  	= 0,
					['decals_1']  	= 0,
					['decals_2']  	= 0,
					['chain_1']   	= 0,
					['chain_2']   	= 0,
					['pants_1']   	= 10,
					['pants_2']   	= 2,
					['shoes_1']   	= 56,
					['shoes_2']   	= 0,
					['helmet_1']  	= 34,
					['helmet_2']  	= 0,
					['glasses_1'] 	= 34,
					['glasses_2'] 	= 1,
					['bag_1'] 		= 0,
					['bag_2'] 		= 0,
				},
				[2] = {
					['mask_1']    	= 0,
					['mask_2']    	= 0,
					['arms_1']      = 0,
					['arms_2']      = 0,
					['tshirt_1']  	= 15,
					['tshirt_2']  	= 0,
					['torso_1']   	= 86,
					['torso_2']   	= 0,
					['bproof_1']  	= 0,
					['bproof_2']  	= 0,
					['decals_1']  	= 0,
					['decals_2']  	= 0,
					['chain_1']   	= 0,
					['chain_2']   	= 0,
					['pants_1']   	= 10,
					['pants_2']   	= 2,
					['shoes_1']   	= 56,
					['shoes_2']   	= 0,
					['helmet_1']  	= 34,
					['helmet_2']  	= 0,
					['glasses_1'] 	= 34,
					['glasses_2'] 	= 1,
					['bag_1'] 		= 0,
					['bag_2'] 		= 0,
				},
				[3] = {
					['mask_1']    	= 0,
					['mask_2']    	= 0,
					['arms_1']      = 0,
					['arms_2']      = 0,
					['tshirt_1']  	= 15,
					['tshirt_2']  	= 0,
					['torso_1']   	= 86,
					['torso_2']   	= 0,
					['bproof_1']  	= 0,
					['bproof_2']  	= 0,
					['decals_1']  	= 0,
					['decals_2']  	= 0,
					['chain_1']   	= 0,
					['chain_2']   	= 0,
					['pants_1']   	= 10,
					['pants_2']   	= 2,
					['shoes_1']   	= 56,
					['shoes_2']   	= 0,
					['helmet_1']  	= 34,
					['helmet_2']  	= 0,
					['glasses_1'] 	= 34,
					['glasses_2'] 	= 1,
					['bag_1'] 		= 0,
					['bag_2'] 		= 0,
				},
			},
		},
	},
}


Config.BodyParts = {

	-- ["0"] = { id = "hip", label = "Damaged Hipbone", levels = { ["default"] = "Damaged", ["10"] = "Damaged x2", ["20"] = "Damaged x3", ["30"] = "Damaged x3", ["40"] = "Damaged x3", ["50"] = "Damaged x3" } },
	["0"] = 	{ id = "hip", 		label = "Hanche", 					levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- hip bone,
	["10706"] = { id = "rclavicle", label = "Clavicule droite", 		levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right clavicle
	["64729"] = { id = "lclavicle", label = "Clavicule gauche", 		levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right clavicle
	["14201"] = { id = "lfoot", 	label = "Pied gauche", 				levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left foot
	["18905"] = { id = "lhand", 	label = "Main gauche", 				levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left hand
	["24816"] = { id = "lbdy", 		label = "Bas du torse", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- lower chest
	["24817"] = { id = "ubdy", 		label = "Haut du torse", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- Upper chest
	["24818"] = { id = "shoulder", 	label = "Epaule", 					levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- shoulder
	["28252"] = { id = "rforearm", 	label = "Avant-bras droit", 		levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right forearm
	["36864"] = { id = "rleg", 		label = "Jambe droite", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right lef
	["39317"] = { id = "neck", 		label = "Cou", 						levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- neck
	["40269"] = { id = "ruparm", 	label = "Bras supérieur droit", 	levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right upper arm
	["45509"] = { id = "luparm", 	label = "Bras supérieur gauche", 	levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left upper arm
	["51826"] = { id = "rthigh", 	label = "Cuisse droite", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right thigh
	["52301"] = { id = "rfoot", 	label = "Pied droit", 				levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right foot
	["57005"] = { id = "rhand", 	label = "Main droite", 				levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- right hand
	["57597"] = { id = "5lumbar", 	label = "5ème vertèbre lombaire", 	levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- waist
	["58271"] = { id = "lthigh", 	label = "Cuisse gauche", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left thigh
	["61163"] = { id = "lforearm", 	label = "Avant-bras gauche", 		levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left forearm
	["63931"] = { id = "lleg", 		label = "Jambe gauche", 			levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- left leg
	["31086"] = { id = "head", 		label = "Tête", 					levels = { ["default"] = "Légère blessure", ["10"] = "Légère blessure", ["20"] = "Légère blessure", ["30"] = "Blessure importante", ["40"] = "Blessure importante", ["50"] = "Blessure importante", ["60"] = "Blessure sévère", ["70"] = "Blessure sévère", ["80"] = "Blessure sévère", ["90"] = "!! Blessure extrême !!", ["100"] = "!! Blessure extrême !!" } },	-- head
}

function Config.SendDistressCall(msg)
	--[--] -- Quasar

	-- TriggerServerEvent('qs-smartphone:server:sendJobAlert', {message = msg, location = GetEntityCoords(PlayerPedId())}, "ambulance")


	--[--] -- GKS
	-- local myPos = GetEntityCoords(PlayerPedId())
	-- local GPS = 'GPS: ' .. myPos.x .. ', ' .. myPos.y

	-- ESX.TriggerServerCallback('gksphone:namenumber', function(Races)
	--     local name = Races[2].firstname .. ' ' .. Races[2].lastname

	--     TriggerServerEvent('gksphone:jbmessage', name, Races[1].phone_number, msg, '', GPS, "ambulance")
	-- end)
end