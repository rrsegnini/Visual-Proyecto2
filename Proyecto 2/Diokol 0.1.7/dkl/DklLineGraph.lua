--
-- DklLineGraph.lua
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

function _LineGraph(x,y,w,h,data,categories)
	pushMatrix()
	translate(x,y)
	DklRectCatAxis(w, h,categories)

	local res = 0
	local n = #data
	beginShape()
	for i=1,n do
		if(res<w)then
			if (data[i][1]==1) then
				vertex(i*30,h)
			elseif (data[i][1]==2 or data[i][1]==3) then
				vertex(i*30,h-10)
			elseif (data[i][1]==4 or data[i][1]==5) then
				vertex(i*30,h-20)
			elseif (data[i][1]==6 or data[i][1]==7) then
				vertex(i*30,h-30)
			elseif (data[i][1]==8) then
				vertex(i*30,h-40)
			elseif (data[i][1]==9 or data[i][1]==10) then
				vertex(i*30,h-50)
			elseif (data[i][1]==11 or data[i][1]==12) then
				vertex(i*30,h-60)
			end
			res = res + (i*30)
		else
			translate(0,h)
			DklRectCatAxis(w, h, categories)
			res = 0
		end
	end
	endShape()

	strokeWeight(2)

	popMatrix()
end

function LineGraph(options)
	local state = options.state or {id=0,selection={}}
	state.id = state.id + 1
	local id = state.id
	state.selection[id] = _LineGraph(options.x or 0, options.y or 0, 
		options.w or 100, options.h or 100, options.data or {{}},
		options.categories or {})
end
