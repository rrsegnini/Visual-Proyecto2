require "dkl/DklChartManager"
require "dkl/DklLineGraph"

json = require "json"

local gm
local catColumn
local dataColumn1
local dataColumn2
local maxValue
local colors
local width = 1000
local height = 900
local negra
local negraPuntillo
local blanca
local blancaPuntillo
local redonda
local redondaPuntillo
local corchea
local corcheaPuntillo
local semicorchea
local semicorcheaPuntillo
sostenido = nil

function setup()
	size(width,height)
	local f = loadFont("data/Vera.ttf",16)
	textFont(f)
	gm = DklChartManager:new()
	negra = loadImage('data/notes/negra.png')
	negraPuntillo = loadImage('data/notes/negra_punto.png')
	blanca = loadImage('data/notes/Blanca.png')
	blancaPuntillo = loadImage('data/notes/Blanca_punto.png')
	redonda = loadImage('data/notes/redonda.png')
	redondaPuntillo = loadImage('data/notes/redonda_punto.png')
	corchea = loadImage('data/notes/corchea.png')
	corcheaPuntillo = loadImage('data/notes/corchea_punto.png')
	semicorchea = loadImage('data/notes/semicorchea.png')
	semicorcheaPuntillo = loadImage('data/notes/semicorchea_punto.png')
	sostenido = loadImage('data/notes/sostenido.png')
	
	catColumn = {"F","D","B","G","E"}
	
	---------------- Lectura de datos
	str = readAll("data/data1.json")
	data = json.decode(str)	
	dataColumn1 = mapValues(data)
	
	str = readAll("data/data2.json")
	data = json.decode(str)	
	dataColumn2 = mapValues(data)
	----------------------------------------
end

function draw()
	background(255)
	gm:Begin()
	textAlign(LEFT)
	text("Archivo: data1.json",50,20)
	LineGraph({x=50,y=20,w=width-100, data=dataColumn1,
						categories=catColumn,state=gm
	})
	
	textAlign(LEFT)
	text("Archivo: data2.json",50,540)
	LineGraph({x=50,y=540,w=width-100, data=dataColumn2,
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
		local tipoNota = math.floor(map(data[i].size,minSize,maxSize,1,10)+0.5)
		if(tipoNota == 1)then
			tipoNota = semicorchea
		elseif(tipoNota == 2)then
			tipoNota = semicorcheaPuntillo
		elseif(tipoNota == 3)then
			tipoNota = corchea
		elseif(tipoNota == 4)then
			tipoNota = corcheaPuntillo
		elseif(tipoNota == 5)then
			tipoNota = negra
		elseif(tipoNota == 6)then
			tipoNota = negraPuntillo
		elseif(tipoNota == 7)then
			tipoNota = blanca
		elseif(tipoNota == 8)then
			tipoNota = blancaPuntillo
		elseif(tipoNota == 9)then
			tipoNota = redonda
		elseif(tipoNota == 10)then
			tipoNota = redondaPuntillo
		end
		table.insert(result,
							{math.floor(map(data[i].value,minValue,maxValue,1,12)+0.5),
							tipoNota})
	end
	return result
end

