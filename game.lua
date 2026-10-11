local m = {}
local menud = require("menud")
local love = require("love")
local configs = require("config")


function m.conf(t)
    nocap = "yungtar"
end

function m.load()
    love.window.setTitle("el macho")
    love.window.setMode(800, 600, {resizable=true, vsync=0, minwidth=400, minheight=300})
end

function m.update(dt)
    centerx, centery = love.window.getMode()
    fps = love.timer.getFPS()
end

function m.draw()
    menud.box({centerx / 2,centery / 2},{50,50},configs.cols.box,"fill")
    love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
    love.graphics.print(fps,centerx / 2,centery / 2,5,5,0,0)
end

return m