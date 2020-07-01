
visionLib.Common={}

local function merge(t1, t2)
    for k, v in pairs(t2) do
        if (type(v) == "table") and (type(t1[k] or false) == "table") then
            merge(t1[k], t2[k])
        else
            t1[k] = v
        end
    end
    return t1
end

function visionLib.Common.SmartOverrideItem(name,redef)
	if minetest.registered_items[name] then
		minetest.register_item(":"..name, merge(visionLib.Table.Clone(minetest.registered_items[name]), redef))
	else
		minetest.register_craftitem(":"..name, redef)
	end
end

function visionLib.Common.GetAdjacents(p)
	return {
		["y"]={x=p.x,y=p.y+1,z=p.z},
		["Y"]={x=p.x,y=p.y-1,z=p.z},
		["x"]={x=p.x+1,y=p.y,z=p.z},
		["X"]={x=p.x-1,y=p.y,z=p.z},
		["z"]={x=p.x,y=p.y,z=p.z+1},
		["Z"]={x=p.x,y=p.y,z=p.z-1}
	}
end