--
-- DklLinePlot.lua
--
-- Döiköl Data Visualization Library
--
-- Copyright (c) 2017-2018 Armando Arce - armando.arce@gmail.com
--
-- This library is free software; you can redistribute it and/or modify
-- it under the terms of the MIT license. See LICENSE for details.
--

require "dkl/DklRectCatAxis"
require "dkl/DklLegend"
require "dkl/DklLabel"
require "dkl/DklUtilities"

function __DklLinePlot(w,h,dataX)

	local n = #dataX
	local iniX,iniY
	local result = false
	
	local rateY = h/4
	beginShape()
	for i=1,n do
		if (dataX[i][1]==1) then
			vertex(i*30,h)
		elseif (dataX[i][1]==2 or dataX[i][1]==3) then
			vertex(i*30,h-10)
		elseif (dataX[i][1]==4 or dataX[i][1]==5) then
			vertex(i*30,h-20)
		elseif (dataX[i][1]==6 or dataX[i][1]==7) then
			vertex(i*30,h-30)
		elseif (dataX[i][1]==8) then
			vertex(i*30,h-40)
		elseif (dataX[i][1]==9 or dataX[i][1]==10) then
			vertex(i*30,h-50)
		elseif (dataX[i][1]==11 or dataX[i][1]==12) then
			vertex(i*30,h-60)
		end
	end
	endShape()

	strokeWeight(2)
end

function _DklLinePlot(x,y,w,h,dataX)
	pushMatrix()
	translate(x,y)

		__DklLinePlot(w,h,dataX)
		
	popMatrix()
end

function DklLinePlot(options)
	local state = options.state or {id=0,selection={}}
	state.id = state.id + 1
	local id = state.id
	if (not options.minX) then options.minX = 0 end
	if (not options.maxX) then options.maxX = 100 end
	if (not options.minY) then options.minY = 0 end
	if (not options.maxY) then options.maxY = 100 end	

	state.selection[id] = _DklLinePlot(options.x or 0, options.y or 0, 
		options.w or 100, options.h or 100, options.dataX or {})
end
