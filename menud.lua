local m = {}
m.object = {}
local love = require("love") --to silence the warnings

---Make box
---@param name string
---@param pos table
---@param size table
---@param cols table
---@param btypes string
function m.box(name,pos,size,cols,btypes)
    love.graphics.setColor(cols[1] / 255, cols[2] / 255, cols[3] / 255)
    love.graphics.rectangle(tostring(btypes),pos[1],pos[2],size[1],size[2])
    for i,v in ipairs(m.object) do
        if v == name then
            print("already have this object")
            table.remove(m.object, i)
            love.quit()
        else
            table.insert(m.object, name)
        end
    end
end

return m