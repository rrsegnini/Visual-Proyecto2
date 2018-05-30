require "dkl/DklChartManager"
require "dkl/DklLineGraph"

json = require "json"

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
	
	---------------- Lectura de datos
	str = readAll("data/data1.json")
	data = json.decode(str)
	----------------------------------------
	catColumn = {"F","D","B","G","E"}
	dataColumn = mapValues(data)
end

function draw()
	background(255)

	gm:Begin()
	LineGraph({x=50,y=20,w=width-100, data=dataColumn,
						categories=catColumn,state=gm
	})


	gm:End()
end

function mapValues(data)
	local n = #data
	local maxValue = -1e309
	local minValue = 1e309
	local maxSize = -1e309
	local minSize = 1e309
	local result = {}
	for i=1, n do
		if(data[i].value > maxValue)then
			maxValue = data[i].value
		end
		if(data[i].value < minValue)then
			minValue = data[i].value
		end
		if(data[i].size > maxSize)then
			maxSize = data[i].size
		end
		if(data[i].size < minSize)then
			minSize = data[i].size
		end
	end
	------------------------------------
	for i=1, n do
		table.insert(result,
							{math.floor(map(data[i].value,minValue,maxValue,1,12)+0.5),
							math.floor(map(data[i].size,minSize,maxSize,1,10)+0.5)})
	end
	return result
end

