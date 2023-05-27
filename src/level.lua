return function(screenwidth, screenheight)
	local t = {}

	for i = 0,5 do
		local t2 = {}
		t2.x1 = math.random(50,screenwidth-50)
		t2.x2 = math.random(50,screenwidth-50)
		t2.y1 = math.random(50,screenheight-50)
		t2.y2 = math.random(50,screenheight-50)
		table.insert(t,t2)
	end

	return t
end
