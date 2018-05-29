require "dkl/DklChartManager"
require "dkl/DklLineGraph"

local gm
local catColumn
local dataColumn
local maxValue
local colors
local width = 1000
local height = 800

function setup()
	size(width,height)
	local f = loadFont("data/Vera.ttf",11)
	textFont(f)
	gm = DklChartManager:new()
	catColumn = {"F","D","B","G","E"}
	dataColumn = {{1, 3},{3,4},{2,5},{10,6},{4,7},{11,10},{9,8}}
end

function draw()
	background(255)

	gm:Begin()
	LineGraph({x=50,y=20,w=width-100, data=dataColumn,
						categories=catColumn,state=gm
	})


	gm:End()
end
