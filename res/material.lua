
visionLib.Material={}

visionLib.Materials={}

visionLib._sMaterials={
	["iron"]=function()
		visionLib.Common.SmartOverrideItem("default:steel_ingot", {description="Wrought Iron Ingot", groups={ingot_iron=1, ingot=1, iron=1, metal=1}})
		visionLib.Common.SmartOverrideItem("default:steelblock", {description="Wrought Iron Block", groups={block_iron=1, iron=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_iron", {groups={ore_iron=1, iron=1}})
		visionLib.Common.SmartOverrideItem("default:iron_lump", {groups={ore_iron=1, lump_iron=1, iron=1}})
	end,
	["copper"]=function()
		visionLib.Common.SmartOverrideItem("default:copper_ingot", {groups={ingot_copper=1, ingot=1, copper=1, metal=1}})
		visionLib.Common.SmartOverrideItem("default:copperblock", {groups={block_copper=1, copper=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_copper", {groups={ore_copper=1, copper=1}})
		visionLib.Common.SmartOverrideItem("default:copper_lump", {groups={ore_copper=1, lump_copper=1,copper=1}})
	end,
	["tin"]=function()
		visionLib.Common.SmartOverrideItem("default:tin_ingot", {groups={ingot_tin=1, ingot=1, tin=1, metal=1}})
		visionLib.Common.SmartOverrideItem("default:tinblock", {groups={block_tin=1, tin=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_tin", {groups={ore_tin=1, tin=1}})
		visionLib.Common.SmartOverrideItem("default:tin_lump", {groups={ore_tin=1, lump_tin=1,tin=1}})
	end,
	["gold"]=function()
		visionLib.Common.SmartOverrideItem("default:gold_ingot", {groups={ingot_gold=1, ingot=1, gold=1, metal=1}})
		visionLib.Common.SmartOverrideItem("default:goldblock", {groups={block_gold=1, gold=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_gold", {groups={ore_gold=1, gold=1}})
		visionLib.Common.SmartOverrideItem("default:gold_lump", {groups={ore_gold=1, lump_gold=1,gold=1}})
	end,
	["bronze"]=function()
		visionLib.Common.SmartOverrideItem("default:bronze_ingot", {groups={ingot_bronze=1, ingot=1, bronze=1, metal=1}})
		visionLib.Common.SmartOverrideItem("default:bronzeblock", {groups={block_bronze=1, bronze=1, metal_block=1}})
	end,
	["diamond"]=function()
		visionLib.Common.SmartOverrideItem("default:diamond", {groups={gem_diamond=1, gem=1, diamond=1}})
		visionLib.Common.SmartOverrideItem("default:diamondblock", {groups={block_diamond=1, diamond=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_diamond", {groups={ore_diamond=1, diamond=1}})
	end,
	["mese"]=function()
		visionLib.Common.SmartOverrideItem("default:mese_crystal", {groups={gem_mese=1, gem=1, mese=1}})
		visionLib.Common.SmartOverrideItem("default:mese_crystal_fragment", {groups={shard_mese=1, shard=1, mese=1}})
		visionLib.Common.SmartOverrideItem("default:mese", {groups={block_mese=1, mese=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_mese", {groups={ore_mese=1, mese=1}})
	end,
	["obsidian"]=function()
		visionLib.Common.SmartOverrideItem("default:obsidian_shard", {groups={shard_obsidian=1, shard=1, obsidian=1}})
		visionLib.Common.SmartOverrideItem("default:obsidian", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:obsidianbrick", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:obsidian_block", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:obsidian_glass", {groups={block_obsidian=1, obsidian=1, gem_block=1}})
	end,
	["coal"]=function()
		visionLib.Common.SmartOverrideItem("default:coal_lump", {groups={gem_coal=1, gem=1, coal=1}})
		visionLib.Common.SmartOverrideItem("default:coalblock", {groups={block_coal=1, coal=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("default:stone_with_coal", {groups={ore_coal=1, diamond=1}})
	end,
	["luminium"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_bar", {groups={ingot_luminium=1, ingot=1, luminium=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:plate_luminium", {groups={plate_luminium=1, plate=1, luminium=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_block", {groups={block_luminium=1, luminium=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_ore", {groups={ore_luminium=1, luminium=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_lump", {groups={ore_luminium=1, lump_luminium=1,luminium=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_chip", {groups={nugget_luminium=1, nugget=1, luminium=1}})
	end,
	["lumigold"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:luminium_bar_3", {groups={ingot_lumigold=1, ingot=1, lumigold=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:lumigold_block", {groups={block_lumigold=1, lumigold=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:plate_lumigold", {groups={plate_lumigold=1, plate=1, lumigold=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:lumigold_rod", {groups={rod_lumigold=1, rod=1, lumigold=1, metal=1}})
	end,
	["hekatonium"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_bar", {groups={ingot_hekatonium=1, ingot=1, hekatonium=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_block", {groups={block_hekatonium=1, hekatonium=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_ore", {groups={ore_hekatonium=1, hekatonium=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:hekatonium_chunk", {groups={ore_hekatonium=1, lump_hekatonium=1,hekatonium=1}})
	end,
	["angmallen"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:angmallen_bar", {groups={ingot_angmallen=1, ingot=1, angmallen=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:angmallen_block", {groups={block_angmallen=1, angmallen=1, metal_block=1}})
	end,
	["silicotin"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:silicotin_bar", {groups={ingot_silicotin=1, ingot=1, silicotin=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:silicotin_block", {groups={block_silicotin=1, silicotin=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:plate_silicotin", {groups={plate_silicotin=1, plate=1, silicotin=1, metal=1}})
	end,
	["zweinium"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_crystal", {groups={gem_zweinium=1, gem=1, zweinium=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_block", {groups={block_zweinium=1, zweinium=1, gem_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:zweinium_ore", {groups={ore_zweinium=1, zweinium=1}})
	end,
	["shimmering"]=function()
		visionLib.Common.SmartOverrideItem("ocular_networks:shimmering_bar", {groups={ingot_shimmering=1, ingot=1, shimmering=1, metal=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:shimmering_block", {groups={block_shimmering=1, shimmering=1, metal_block=1}})
		visionLib.Common.SmartOverrideItem("ocular_networks:plate_shimmering", {groups={plate_shimmering=1, plate=1, shimmering=1, metal=1}})
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

local function generate()
	for k,v in pairs(visionLib.Material.using) do
		visionLib.Materials[k]={}
		if visionLib._sMaterials[k] then
			visionLib._sMaterials[k]()
		else
			print("[visionLib]/ERROR: A registered vLib material is missing information: "..k)
		end
	end
end

minetest.after(0, generate)

if minetest.get_modpath("default") then
visionLib.Material.require({"iron", "copper", "tin", "gold", "bronze", "diamond", "mese", "obsidian", "coal"})
end