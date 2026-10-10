--loader 
local love = require("love") --to silence the warnings
local game = require("game")

function love.load()
    game.load()
end

function love.update(dt)
    game.update(dt)
end

function love.draw()
    game.draw()
end