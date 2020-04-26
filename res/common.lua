
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