
visionLib.Schem={}

function visionLib.Schem.GetConnected(pos, acceptable, extra, cull_nx, ignore_out)
	local iPos=visionLib.Table.Clone(pos)
	local stc = {[pos.x.." "..pos.y.." "..pos.z]=visionLib.Table.Clone(pos)}
	local res = {}
	local l2={iPos}
	local con=1
	
	local function process (x, y, z, read_from)
		local pos = {x=x,y=y,z=z}
		if not stc[pos.x.." "..pos.y.." "..pos.z] then
			if acceptable[minetest.get_node(pos).name] then
				stc[pos.x.." "..pos.y.." "..pos.z]=visionLib.Table.Clone(pos)
				table.insert(l2, visionLib.Table.Clone(pos))
				con=con+1
				pos.previous_pos = visionLib.Table.Clone(read_from)
				if not cull_nx then res[pos.x.." "..pos.y.." "..pos.z]=visionLib.Table.Clone(pos) end
			elseif extra and extra[minetest.get_node(pos).name] then
				stc[pos.x.." "..pos.y.." "..pos.z]=visionLib.Table.Clone(pos)
				pos.previous_pos = visionLib.Table.Clone(read_from)
				res[pos.x.." "..pos.y.." "..pos.z]=visionLib.Table.Clone(pos)
			end
		end
	end
	
	local first=true
	
	while con > 0 do
		con=0
		for _,v in pairs(l2) do
			if first then
				first = false
				
				if not (ignore_out == 'x') then process(v.x+1, v.y,v.z, v) end
				if not (ignore_out == 'X') then process(v.x-1, v.y,v.z, v) end

				if not (ignore_out == 'z') then process(v.x, v.y,v.z+1, v) end
				if not (ignore_out == 'Z') then process(v.x, v.y,v.z-1, v) end

				if not (ignore_out == 'y') then process(v.x, v.y+1,v.z, v) end
				if not (ignore_out == 'Y') then process(v.x, v.y-1,v.z, v) end
			else
				process(v.x+1, v.y,v.z, v)
				process(v.x-1, v.y,v.z, v)

				process(v.x, v.y,v.z+1, v)
				process(v.x, v.y,v.z-1, v)

				process(v.x, v.y+1,v.z, v)
				process(v.x, v.y-1,v.z, v)
			end
		end
	end
	
	for k,v in pairs(res) do
		res[k].name=minetest.get_node(v).name
	end
	
	return res
end
