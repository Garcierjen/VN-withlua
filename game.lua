local m = {}
local menud = require("menud")
local love = require("love")
local configs = require("config")

function m.load()
    x, y = 1, 1
    tlb = 1
end

function m.update(dt)
    tlb = tlb + 1
    x = x + 1
    y = y + 1
    print(#menud.object)
end

function m.draw()
    menud.box("lol",{x,y},{tlb,tlb},configs.cols.box,"fill")
    love.graphics.print(tlb,50,-50,5,5,0,0)
end

return m