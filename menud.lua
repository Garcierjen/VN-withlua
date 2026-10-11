local m = {}
local love = require("love") --to silence the warnings

---Make box
---@param pos table
---@param size table
---@param cols table
---@param btypes string
function m.box(pos,size,cols,btypes)
    love.graphics.setColor(cols[1] / 255, cols[2] / 255, cols[3] / 255)
    love.graphics.rectangle(tostring(btypes),pos[1],pos[2],size[1],size[2])
end

return m