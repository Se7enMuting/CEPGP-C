
		--[[	Slot = { [itemID] = itemLevel } 	]]--
		
CEPGP_tokens = {
	Heads = {
		["Trinket"] = {
			[18423] = 74,	-- of Onyxia (Alliance) -- Can also be a neck and ring
			[18422] = 74,	-- of Onyxia (Horde) -- Same deal
			[19003] = 83,	-- of Nefarian (Alliance) -- Can also be neck and ring
			[19002] = 83,	-- of Nefarian (Horde) -- Same deal
			[21221] = 88,	-- Eye of C'Thun -- Can also be a cloak or ring
			[22520] = 90,	-- Phylactery of Kel'Thuzad
			[19802] = 68,	-- Heart of Hakkar
			[21220] = 70,	-- of Ossirian the Unscarred
			[18646] = 75,	-- [神聖之眼]
			[18703] = 75,	-- [遠古石葉]
			[18705] = 75	-- [成年黑龍的肌腱]
		},
		["HAND"] = {
			[18563] = 80,	-- [逐風者禁錮之顱]
			[18564] = 80,	-- [逐風者禁錮之顱]
			[22726] = 20	-- [阿泰絲之杖的碎片]
		 },
		["WEAPON"] = {
			[19395] = 80,	-- [恢復寶石]
			[19406] = 80,	-- [龍牙飾物]
			[19431] = 80,	-- [斯泰林的甲蟲殼]
			[19379] = 83	-- [奈薩里奧之淚]
		 },
		["2HWEAPON"] = {
			[17204] = 80	-- [薩弗拉斯之眼]
		 },
		["RELIC"] = {
			[17203] = -100, 	-- [薩弗隆鐵錠]
			[18562] = -100, 	-- [元素礦石]
			[19017] = -100, 	-- [火焰之王的精華]
			[22734] = -100, 	-- [阿泰絲之杖的杖柄]
			[22733] = -100, 	-- [阿泰絲之杖的杖頭]
			[22727] = -100, 	-- [阿泰絲之杖的骨架]
			[18264] = -100, 	-- [設計圖：元素磨刀石]
			[18292] = -100, 	-- [結構圖：火核狙擊步槍]
			[18291] = -100, 	-- [結構圖：力回饋盾牌]
			[18290] = -100, 	-- [結構圖：比茲尼克247x128精確瞄準鏡]
			[18259] = -100, 	-- [公式：附魔武器 - 法術能量]
			[18260] = -100, 	-- [公式：附魔武器 - 治療能量]
			[18252] = -100, 	-- [圖樣：熔火護甲片]
			[18265] = -100, 	-- [圖樣：光芒護腕]
			[21371] = -100, 	-- [圖樣：熔火惡魔布包]
			[18257] = -100, 	-- [配方：極效活力藥水]
			[19341] = -100, 	-- [生命寶石]
			[19342] = -100, 	-- [毒性圖騰]
			[19336] = -100, 	-- [秘法能量寶石]
			[19339] = -100, 	-- [思維加速寶石]
			[19337] = -100, 	-- [黑龍之書]
			[19345] = -100, 	-- [庇護者]
			[19344] = -100, 	-- [自然之盟水晶]
			[19343] = -100, 	-- [盲目光芒卷軸]
			[19340] = -100, 	-- [變形符文]
			[20383] = -100 	-- [勒西雷爾的頭顱]
		}
	},

	ZG = {
		["Wrist"] = {
			[19717] = 61,	-- Armsplint
			[19716] = 61,	-- Bindings
			[19718] = 61,	-- Stanchion
		},
		["Waist"] = {
			[19719] = 61,	-- Girdle
			[19720] = 61	-- Sash
		},
		["Chest"] = {
			[19724] = 65,	-- Aegis
			[19723] = 65,	-- Kossack
			[19722] = 65	-- Tabard
		},
		["Shoulder"] = {
			[19721] = 68	-- Shawl
		}
	},

	AQ = {
		["Cloak"] = {
			[20885] = 67,	-- Martial Drake
			[20889] = 67	-- Regal Drape
		},
		["Finger"] = {
			[20888] = 65,	-- Ceremonial Ring
			[20884] = 65	-- Magisterial Ring
		},
		["Weaponoffhand"] = {
			[20886] = 70,	-- Spiked Hilt -- Exceptions apply - Paladin / Shaman weapon are main hand
			[21232] = 79,	-- Imperial Qiraji Armaments -- Can also be a ranged weapon or shield
		},
		["Weaponmainhand"] = {
			[20890] = 70	-- Ornate Hilt
		},
		["TwoHweapon"] = {
			[21237] = 79	-- Imperial Qiraji Regalia -- Can also be a one-handed weapon
		},
		["Feet"] = {
			[20928] = 78,	-- Qiraji Bindings of Command -- Can also be shoulders
			[20932] = 78	-- Qiraji Bindings of Dominance -- same deal
		},
		["Chest"] = {
			[20933] = 88,	-- Husk of the Old God
			[20929] = 88	-- Carapace of the Old God
		},
		["Legs"] = {
			[20927] = 81,	-- Ouro's Intact Hide
			[20931] = 81	-- Skin of the Great Sandworm
		}
	},

	T3 = {
		["Shoulder"] = {
			[22368] = 86,	-- Shoulderpads
			[22354] = 86,	-- Pauldrons
			[22361] = 86	-- Spaulders
		},
		["Feet"] = {
			[22372] = 86,	-- Sandals
			[22365] = 86,	-- Boots
			[22358] = 86	-- Sabatons
		},
		["Wrist"] = {
			[22369] = 88,	-- Bindings
			[22362] = 88,	-- Wristguards
			[22355] = 88	-- Bracers
		},
		["Hand"] = {
			[22357] = 88,	-- Gauntlets
			[22364] = 88,	-- Handguards
			[22371] = 88,	-- Gloves
		},
		["Waist"] = {
			[22363] = 88,	-- Girdle
			[22370] = 88,	-- Belt
			[22356] = 88	-- Waistguard
		},
		["Legs"] = {
			[22359] = 88,	-- Legguards
			[22352] = 88,	-- Legplates
			[22366] = 88	-- Leggings
		},
		["Head"] = {
			[22367] = 88,	-- Circlet
			[22360] = 88,	-- Headpiece
			[22353] = 88	-- Helmet
		},
		["Chest"] = {
			[22350] = 92,	-- Tunic
			[22351] = 92,	-- Robe
			[22349] = 92	-- Breastplate
		}
	}
}