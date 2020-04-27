
visionLib.Material={}

visionLib.Materials={}

visionLib._sMaterials={
	["iron"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:steel_ingot", {description="Wrought Iron Ingot", groups={ingot_iron=1, ingot=1, iron=1, metal=1}})
			visionLib.Common.SmartOverrideItem("default:steelblock", {description="Wrought Iron Block", groups={block_iron=1, iron=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_iron", {groups={ore_iron=1, iron=1}})
			visionLib.Common.SmartOverrideItem("default:iron_lump", {groups={ore_iron=1, lump_iron=1, iron=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:wrought_iron_dust", {groups={dust_iron=1,iron=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("iron", "Wrought Iron", "hard", "b0b0b0a0")
		end
	end,
	["copper"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:copper_ingot", {groups={ingot_copper=1, ingot=1, copper=1, metal=1}})
			visionLib.Common.SmartOverrideItem("default:copperblock", {groups={block_copper=1, copper=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_copper", {groups={ore_copper=1, copper=1}})
			visionLib.Common.SmartOverrideItem("default:copper_lump", {groups={ore_copper=1, lump_copper=1,copper=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:copper_dust", {groups={dust_copper=1,copper=1,dust=1, metal=1}})
				visionLib.Common.SmartOverrideItem("technic:copper_plate", {groups={plate_copper=1,copper=1,plate=1, metal=1}})
			end
		else
			visionLib.Material.create("copper", "Copper", "soft", "ffc60050")
		end
	end,
	["tin"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:tin_ingot", {groups={ingot_tin=1, ingot=1, tin=1, metal=1}})
			visionLib.Common.SmartOverrideItem("default:tinblock", {groups={block_tin=1, tin=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_tin", {groups={ore_tin=1, tin=1}})
			visionLib.Common.SmartOverrideItem("default:tin_lump", {groups={ore_tin=1, lump_tin=1,tin=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:tin_dust", {groups={dust_tin=1,tin=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("tin", "Tin", "hard", "bobob850")
		end
	end,
	["gold"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:gold_ingot", {groups={ingot_gold=1, ingot=1, gold=1, metal=1}})
			visionLib.Common.SmartOverrideItem("default:goldblock", {groups={block_gold=1, gold=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_gold", {groups={ore_gold=1, gold=1}})
			visionLib.Common.SmartOverrideItem("default:gold_lump", {groups={ore_gold=1, lump_gold=1,gold=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:gold_dust", {groups={dust_gold=1,gold=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("gold", "Gold", "soft", "ffd90050")
		end
	end,
	["bronze"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:bronze_ingot", {groups={ingot_bronze=1, ingot=1, bronze=1, metal=1}})
			visionLib.Common.SmartOverrideItem("default:bronzeblock", {groups={block_bronze=1, bronze=1, metal_block=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:bronze_dust", {groups={dust_bronze=1,bronze=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("bronze", "Bronze", "hard", "ff990055")
		end
	end,
	["diamond"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:diamond", {groups={gem_diamond=1, gem=1, diamond=1}})
			visionLib.Common.SmartOverrideItem("default:diamondblock", {groups={block_diamond=1, diamond=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_diamond", {groups={ore_diamond=1, diamond=1}})
		end
	end,
	["mese"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:mese_crystal", {groups={gem_mese=1, gem=1, mese=1}})
			visionLib.Common.SmartOverrideItem("default:mese_crystal_fragment", {groups={shard_mese=1, shard=1, mese=1}})
			visionLib.Common.SmartOverrideItem("default:mese", {groups={block_mese=1, mese=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_mese", {groups={ore_mese=1, mese=1}})
		end
	end,
	["obsidian"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:obsidian_shard", {groups={shard_obsidian=1, shard=1, obsidian=1}})
			visionLib.Common.SmartOverrideItem("default:obsidian", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:obsidianbrick", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:obsidian_block", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:obsidian_glass", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
		end
	end,
	["coal"]=function()
		if minetest.get_modpath("default") then
			visionLib.Common.SmartOverrideItem("default:coal_lump", {groups={gem_coal=1, gem=1, coal=1}})
			visionLib.Common.SmartOverrideItem("default:coalblock", {groups={block_coal=1, coal=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("default:stone_with_coal", {groups={ore_coal=1, diamond=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:coal_dust", {groups={dust_coal=1,coal=1,dust=1}})
			end
		end
	end,
	["luminium"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_bar", {groups={ingot_luminium=1, ingot=1, luminium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:plate_luminium", {groups={plate_luminium=1, plate=1, luminium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_luminium", {groups={dust_luminium=1, dust=1, luminium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_block", {groups={block_luminium=1, luminium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_ore", {groups={ore_luminium=1, luminium=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_lump", {groups={ore_luminium=1, lump_luminium=1,luminium=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_chip", {groups={nugget_luminium=1, nugget=1, luminium=1}})
		else
			visionLib.Material.create("luminium", "Luminium", "hard", "76abffa0")
		end
	end,
	["lumigold"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:luminium_bar_3", {groups={ingot_lumigold=1, ingot=1, lumigold=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:lumigold_block", {groups={block_lumigold=1, lumigold=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:plate_lumigold", {groups={plate_lumigold=1, plate=1, lumigold=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:lumigold_rod", {groups={rod_lumigold=1, rod=1, lumigold=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_lumigold", {groups={dust_lumigold=1, dust=1, lumigold=1, metal=1}})
		else
			visionLib.Material.create("lumigold", "Lumigold", "hard", "e6e18aa0")
		end
	end,
	["hekatonium"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_bar", {groups={ingot_hekatonium=1, ingot=1, hekatonium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_block", {groups={block_hekatonium=1, hekatonium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_ore", {groups={ore_hekatonium=1, hekatonium=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_chunk", {groups={ore_hekatonium=1, lump_hekatonium=1,hekatonium=1}})
		else
			visionLib.Material.create("hekatonium", "hekatonium", "hard", "3a00a7c0")
		end
	end,
	["angmallen"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:angmallen_bar", {groups={ingot_angmallen=1, ingot=1, angmallen=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:angmallen_block", {groups={block_angmallen=1, angmallen=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_angmallen", {groups={dust_angmallen=1, dust=1, angmallen=1, metal=1}})
		else
			visionLib.Material.create("angmallen", "Angmallen", "hard", "ec9600a0")
		end
	end,
	["silicotin"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:silicotin_bar", {groups={ingot_silicotin=1, ingot=1, silicotin=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:silicotin_block", {groups={block_silicotin=1, silicotin=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:plate_silicotin", {groups={plate_silicotin=1, plate=1, silicotin=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_silicotin", {groups={dust_silicotin=1, dust=1, silicotin=1, metal=1}})
		else
			visionLib.Material.create("silicotin", "Silicotin", "hard", "262c76d4")
		end		
	end,
	["zweinium"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_crystal", {groups={gem_zweinium=1, gem=1, zweinium=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_block", {groups={block_zweinium=1, zweinium=1, gem_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_ore", {groups={ore_zweinium=1, zweinium=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_zweinium", {groups={dust_zweinium=1, dust=1, zweinium=1}})
		else
			visionLib.Material.create("zweinium", "Zweinium", "fragile", "00ff7190")
		end
	end,
	["shimmering"]=function()
		if minetest.get_modpath("ocular_networks") then
			visionLib.Common.SmartOverrideItem("ocular_networks:shimmering_bar", {groups={ingot_shimmering=1, ingot=1, shimmering=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:shimmering_block", {groups={block_shimmering=1, shimmering=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:plate_shimmering", {groups={plate_shimmering=1, plate=1, shimmering=1, metal=1}})
			visionLib.Common.SmartOverrideItem("ocular_networks:dust_shimmering", {groups={dust_shimmering=1, dust=1, shimmering=1, metal=1}})
		else
			visionLib.Material.create("shimmering", "Shimmering", "hard", "ffffffa0")
		end
	end,
	["mithril"]=function()
		if minetest.get_modpath("moreores") then
			visionLib.Common.SmartOverrideItem("moreores:mithril_ingot", {groups={ingot_mithril=1, ingot=1, mithril=1, metal=1}})
			visionLib.Common.SmartOverrideItem("moreores:mithril_block", {groups={block_mithril=1, mithril=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("moreores:mineral_mithril", {groups={ore_mithril=1, mithril=1}})
			visionLib.Common.SmartOverrideItem("moreores:mithril_lump", {groups={ore_mithril=1, lump_mithril=1,mithril=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:mithril_dust", {groups={dust_mithril=1,mithril=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("mithril", "Mithril", "hard", "0203f8a0")
		end
	end,
	["silver"]=function()
		if minetest.get_modpath("moreores") then
			visionLib.Common.SmartOverrideItem("moreores:silver_ingot", {groups={ingot_silver=1, ingot=1, silver=1, metal=1}})
			visionLib.Common.SmartOverrideItem("moreores:silver_block", {groups={block_silver=1, silver=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("moreores:mineral_silver", {groups={ore_silver=1, silver=1}})
			visionLib.Common.SmartOverrideItem("moreores:silver_lump", {groups={ore_silver=1, lump_silver=1,silver=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:silver_dust", {groups={dust_silver=1,silver=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("silver", "Silver", "hard", "0000ff20")
		end
	end,
	["brass"]=function()
		if minetest.get_modpath("basic_materials") then
			visionLib.Common.SmartOverrideItem("basic_materials:brass_ingot", {groups={ingot_brass=1, ingot=1, brass=1, metal=1}})
			visionLib.Common.SmartOverrideItem("basic_materials:brass_block", {groups={block_brass=1, brass=1, metal_block=1}})
			if minetest.get_modpath("technic") then
				visionLib.Common.SmartOverrideItem("technic:brass_dust", {groups={dust_brass=1,brass=1,dust=1, metal=1}})
			end
		else
			visionLib.Material.create("brass", "Brass", "hard", "ffd90033")
		end
	end,
	["carbon_steel"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:carbon_steel_ingot", {groups={ingot_carbon_steel=1, ingot=1, carbon_steel=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:carbon_steel_block", {groups={block_carbon_steel=1, carbon_steel=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:carbon_steel_dust", {groups={dust_carbon_steel=1, dust=1, carbon_steel=1, metal=1}})
		else
			visionLib.Material.create("carbon_steel", "Carbon Steel", "hard", "0001f933")
		end
	end,
	["cast_iron"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:cast_iron_ingot", {groups={ingot_cast_iron=1, ingot=1, cast_iron=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:cast_iron_block", {groups={block_cast_iron=1, cast_iron=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:cast_iron_dust", {groups={dust_cast_iron=1, dust=1, cast_iron=1, metal=1}})
		else
			visionLib.Material.create("cast_iron", "Cast Iron", "hard", "0000a035")
		end
	end,
	["chromium"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:chromium_ingot", {groups={ingot_chromium=1, ingot=1, chromium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:chromium_block", {groups={block_chromium=1, chromium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:chromium_dust", {groups={dust_chromium=1, dust=1, chromium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:mineral_chromium", {groups={ore_chromium=1, chromium=1}})
			visionLib.Common.SmartOverrideItem("technic:chromium_lump", {groups={ore_chromium=1, lump_chromium=1,chromium=1}})
		else
			visionLib.Material.create("chromium", "Chromium", "hard", "0203f815")
		end
	end,
	["lead"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:lead_ingot", {groups={ingot_lead=1, ingot=1, lead=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:lead_block", {groups={block_lead=1, lead=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:lead_dust", {groups={dust_lead=1, dust=1, lead=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:mineral_lead", {groups={ore_lead=1, lead=1}})
			visionLib.Common.SmartOverrideItem("technic:lead_lump", {groups={ore_lead=1, lump_lead=1,lead=1}})
		else
			visionLib.Material.create("lead", "Lead", "soft", "40108063")
		end
	end,
	["stainless_steel"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:stainless_steel_ingot", {groups={ingot_stainless_steel=1, ingot=1, stainless_steel=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:stainless_steel_block", {groups={block_stainless_steel=1, stainless_steel=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:stainless_steel_dust", {groups={dust_stainless_steel=1, dust=1, stainless_steel=1, metal=1}})
		else
			visionLib.Material.create("stainless_steel", "Stainless Steel", "hard", "00010320")
		end
	end,
	["zinc"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:zinc_ingot", {groups={ingot_zinc=1, ingot=1, zinc=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:zinc_block", {groups={block_zinc=1, zinc=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:zinc_dust", {groups={dust_zinc=1, dust=1, zinc=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:mineral_zinc", {groups={ore_zinc=1, zinc=1}})
			visionLib.Common.SmartOverrideItem("technic:zinc_lump", {groups={ore_zinc=1, lump_zinc=1,zinc=1}})
		else
			visionLib.Material.create("zinc", "Zinc", "hard", "56f6ff60")
		end
	end,
	["sulfur"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:sulfur_dust", {groups={dust_sulfur=1, dust=1, sulfur=1}})
			visionLib.Common.SmartOverrideItem("technic:mineral_sulfur", {groups={ore_sulfur=1, sulfur=1}})
			visionLib.Common.SmartOverrideItem("technic:sulfur_lump", {groups={ore_sulfur=1, lump_sulfur=1,sulfur=1}})
		else
			visionLib.Material.create("sulfur", "Sulfur", "powder", "fff200a0")
		end
	end,
	["uranium"]=function()
		if minetest.get_modpath("technic") then
			visionLib.Common.SmartOverrideItem("technic:uranium_ingot", {groups={ingot_uranium=1, ingot=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium_block", {groups={block_uranium=1, uranium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium_dust", {groups={dust_uranium=1, dust=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium0_ingot", {groups={ingot_uranium=1, ingot=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium0_block", {groups={block_uranium=1, uranium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium0_dust", {groups={dust_uranium=1, dust=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium35_ingot", {groups={ingot_uranium=1, ingot=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium35_block", {groups={block_uranium=1, uranium=1, metal_block=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium35_dust", {groups={dust_uranium=1, dust=1, uranium=1, metal=1}})
			visionLib.Common.SmartOverrideItem("technic:mineral_uranium", {groups={ore_uranium=1, uranium=1}})
			visionLib.Common.SmartOverrideItem("technic:uranium_lump", {groups={ore_uranium=1, lump_uranium=1,uranium=1}})
		else
			visionLib.Material.create("uranium", "Uranium", "strange", "03ff0170")
		end
	end,
	["nickel"]=function()
		visionLib.Material.create("nickel", "Nickel", "hard", "c6c78fa0")
	end,
	["osmium"]=function()
		visionLib.Material.create("osmium", "Osmium", "hard", "0002f080")
	end,
	["aluminium"]=function()
		visionLib.Material.create("aluminium", "Aluminium", "soft", "d1d4d070")
	end,
	["platinum"]=function()
		visionLib.Material.create("platinum", "Platinum", "soft", "00000020")
	end,
	["titanium"]=function()
		visionLib.Material.create("titanium", "Titanium", "hard", "00000000")
	end,
	["tantalum"]=function()
		visionLib.Material.create("tantalum", "Tantalum", "hard", "000023b0")
	end,
	["neodymium"]=function()
		visionLib.Material.create("neodymium", "Neodymium", "brittle", "ecffa290")
	end,
	["cobalt"]=function()
		visionLib.Material.create("cobalt", "Cobalt", "hard", "00059080")
	end,
	["antimony"]=function()
		visionLib.Material.create("antimony", "Antimony", "soft", "0f0f0f90")
	end,
	["tungsten"]=function()
		visionLib.Material.create("tungsten", "Tungsten", "brittle", "0f0f0f90")
	end,
}

visionLib.Material.using={}

function visionLib.Material.require(r)
	for k,v in pairs(r) do
		if visionLib._sMaterials[v] then
			visionLib.Material.using[v]=true
		end
	end
end

function visionLib.Material.generate()
	for k,v in pairs(visionLib.Material.using) do
		visionLib.Materials[k]={}
		if visionLib._sMaterials[k] then
			visionLib._sMaterials[k]()
		else
			print("[visionLib]/ERROR: A registered vLib material is missing information: "..k)
		end
	end
end

minetest.after(0, visionLib.Material.generate)

function visionLib.Material.create(name, desc, ish, color)
	if ish=="fragile" then
		minetest.register_craftitem(":vision_lib:"..name.."_gem", {
			description = desc.." Crystal",
			inventory_image = "visionlib_gem.png^[colorize:#"..color,
			groups={["gem_"..name]=1, [name]=1, gem=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_shard", {
			description = desc.." Shard",
			inventory_image = "visionlib_shard.png^[colorize:#"..color,
			groups={["shard_"..name]=1, [name]=1, shard=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Powder",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_block", {
			description=desc.." Block",
			tiles={"visionlib_gemblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["block_"..name]=1, [name]=1, gem_block=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})
	elseif ish=="powder" then
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Powder",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1},
		})

		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})
	elseif ish=="brittle" then
		minetest.register_craftitem(":vision_lib:"..name.."_ingot", {
			description = desc.." Ingot",
			inventory_image = "visionlib_ingot.png^[colorize:#"..color,
			groups={["ingot_"..name]=1, [name]=1, ingot=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_nugget", {
			description = desc.." Chip",
			inventory_image = "visionlib_nugget.png^[colorize:#"..color,
			groups={["nugget_"..name]=1, [name]=1, nugget=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Filings",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_plate", {
			description = desc.." Plate",
			inventory_image = "visionlib_plate.png^[colorize:#"..color,
			groups={["plate_"..name]=1, [name]=1, plate=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_rod", {
			description = desc.." Rod",
			inventory_image = "visionlib_rod.png^[colorize:#"..color,
			groups={["rod_"..name]=1, [name]=1, rod=1, metal=1},
		})

		minetest.register_node(":vision_lib:"..name.."_block", {
			description=desc.." Block",
			tiles={"visionlib_metalblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, metal=1, [name]=1, ["block_"..name]=1, metal_block=1},
		})

	elseif ish=="hard" then
		minetest.register_craftitem(":vision_lib:"..name.."_ingot", {
			description = desc.." Ingot",
			inventory_image = "visionlib_ingot.png^[colorize:#"..color,
			groups={["ingot_"..name]=1, [name]=1, ingot=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_nugget", {
			description = desc.." Chip",
			inventory_image = "visionlib_nugget.png^[colorize:#"..color,
			groups={["nugget_"..name]=1, [name]=1, nugget=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Filings",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_plate", {
			description = desc.." Plate",
			inventory_image = "visionlib_plate.png^[colorize:#"..color,
			groups={["plate_"..name]=1, [name]=1, plate=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_rod", {
			description = desc.." Rod",
			inventory_image = "visionlib_rod.png^[colorize:#"..color,
			groups={["rod_"..name]=1, [name]=1, rod=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_gear", {
			description = desc.." Gear",
			inventory_image = "visionlib_gear.png^[colorize:#"..color,
			groups={["gear_"..name]=1, [name]=1, gear=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_block", {
			description=desc.." Block",
			tiles={"visionlib_metalblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, metal=1, [name]=1, ["block_"..name]=1, metal_block=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_wire", {
			description = desc.." Wire",
			inventory_image = "visionlib_wire.png^[colorize:#"..color,
			groups={["wire_"..name]=1, [name]=1, wire=1, metal=1},
		})
	elseif ish=="soft" then
		minetest.register_craftitem(":vision_lib:"..name.."_ingot", {
			description = desc.." Ingot",
			inventory_image = "visionlib_ingot.png^[colorize:#"..color,
			groups={["ingot_"..name]=1, [name]=1, ingot=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_nugget", {
			description = desc.." Chip",
			inventory_image = "visionlib_nugget.png^[colorize:#"..color,
			groups={["nugget_"..name]=1, [name]=1, nugget=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Dust",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_sheet", {
			description = desc.." Sheet",
			inventory_image = "visionlib_sheet.png^[colorize:#"..color,
			groups={["sheet_"..name]=1, [name]=1, sheet=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_wire", {
			description = desc.." Wire",
			inventory_image = "visionlib_wire.png^[colorize:#"..color,
			groups={["wire_"..name]=1, [name]=1, wire=1, metal=1},
		})

		minetest.register_node(":vision_lib:"..name.."_block", {
			description=desc.." Block",
			tiles={"visionlib_metalblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, metal=1, [name]=1, ["block_"..name]=1, metal_block=1},
		})
	elseif ish=="strange" then
		minetest.register_craftitem(":vision_lib:"..name.."_ingot", {
			description = desc.." Ingot",
			inventory_image = "visionlib_ingot.png^[colorize:#"..color,
			groups={["ingot_"..name]=1, [name]=1, ingot=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_nugget", {
			description = desc.." Chip",
			inventory_image = "visionlib_nugget.png^[colorize:#"..color,
			groups={["nugget_"..name]=1, [name]=1, nugget=1, metal=1},
		})
		
		minetest.register_craftitem(":vision_lib:"..name.."_dust", {
			description = desc.." Filings",
			inventory_image = "visionlib_dust.png^[colorize:#"..color,
			groups={["dust_"..name]=1, [name]=1, dust=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_dust_block", {
			description=desc.." Dust Block",
			tiles={"visionlib_dustblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, ["dust_block_"..name]=1, [name]=1, dust_block=1},
		})

		minetest.register_craftitem(":vision_lib:"..name.."_rod", {
			description = desc.." Rod",
			inventory_image = "visionlib_rod.png^[colorize:#"..color,
			groups={["rod_"..name]=1, [name]=1, rod=1, metal=1},
		})
		
		minetest.register_node(":vision_lib:"..name.."_block", {
			description=desc.." Block",
			tiles={"visionlib_metalblock.png^[colorize:#"..color},
			is_ground_content=false,
			groups={cracky=2, metal=1, [name]=1, ["block_"..name]=1, metal_block=1},
		})
		
	end
end

if minetest.get_modpath("default") then
visionLib.Material.require({"iron", "copper", "tin", "gold", "bronze", "diamond", "mese", "obsidian", "coal"})
end
if minetest.get_modpath("moreores") then
visionLib.Material.require({"mithril", "silver"})
end
if minetest.get_modpath("technic") then
visionLib.Material.require({"carbon_steel", "cast_iron", "chromium", "lead", "stainless_steel", "zinc", "sulfur", "uranium"})
end
if minetest.get_modpath("basic_materials") then
visionLib.Material.require({"brass"})
end