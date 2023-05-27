
local speed = 3;
local rotspeed = math.rad(3)

local swidth, sheight

local plr = {
	x = 0,
	y = 0,
	angle = 0
}

function love.load()
	swidth, sheight = love.graphics.getDimensions();
	
	love.window.setTitle("Fun");
	love.graphics.setBackgroundColor(0,0,0)
end

function love.update()
	plr.x = plr.x
		+ (love.keyboard.isDown("up") and
			speed*math.cos(plr.angle) or 0)
		- (love.keyboard.isDown("down") and
			speed*math.cos(plr.angle) or 0);
	plr.y = plr.y
		+ (love.keyboard.isDown("up") and
			speed*math.sin(plr.angle) or 0)
		- (love.keyboard.isDown("down") and
			speed*math.sin(plr.angle) or 0);
	plr.angle = plr.angle 
		+ (love.keyboard.isDown("right") and rotspeed or 0) 
		- (love.keyboard.isDown("left") and rotspeed or 0) 
end

function love.draw()
	love.graphics.setColor(255,255,255)
	love.graphics.print(plr.x.." "..plr.y,0,0)
	
	love.graphics.setColor(255,0,0)
	love.graphics.circle("fill",plr.x,plr.y,5)
	
	love.graphics.line(plr.x, plr.y,
		plr.x + 30 * math.cos(plr.angle),
		plr.y + 30 * math.sin(plr.angle))
end
