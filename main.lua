#!/usr/bin/env lua

-- set screen size
local cw = 380
local ch = 640

-- create tables

local dave = {}
local hal = {}
local tumble = love.audio.newSource("snd/dice.ogg","stream")
tumble:setLooping(false)

dave.color = { 52/255, 52/255, 133/255 }
hal.color = { 220/255, 220/255, 220/255 }

function love.load()
	love.window.setTitle("Dice")
	love.window.setMode(cw,ch,{ resizable = false, vsync = false})
	--love.graphics.setBackgroundColor(25/255,125/255,75/255)
	love.graphics.setBackgroundColor(24/255,148/255,219/255,0.5)
	dave.img = love.graphics.newImage("img/Die1.png")
	math.randomseed(os.time())
end

function love.draw()
	love.graphics.draw( dave.img,cw/2,ch/2,0,0.04,0.04,0,0)
end


function love.mousereleased()
	dave.dice = math.random(1,6)
	--dave.img = love.graphics.newImage("img/Die" .. dave.dice .. ".png")
	dave.img = love.graphics.newImage(string.format("img/Die%d.png",dave.dice))
	love.audio.play(tumble)
end	

