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
	local contador = 1
	local n = #data
	beginShape()
	for i=1,n do
		if(res<w-30)then
			if (data[i][1]==1) then
				vertex(contador*31,h)
				image(data[i][2], contador*31-11, h-19)
			elseif (data[i][1]==2 or data[i][1]==3) then
				vertex(contador*31,h-10)
				image(data[i][2], contador*31-11, h-29)
			elseif (data[i][1]==4 or data[i][1]==5) then
				vertex(contador*31,h-20)
				image(data[i][2], contador*31-11, h-39)
			elseif (data[i][1]==6 or data[i][1]==7) then
				vertex(contador*31,h-30)
				image(data[i][2], contador*31-11, h-49)
			elseif (data[i][1]==8) then
				vertex(contador*31,h-40)
				image(data[i][2], contador*31-11, h-59)
			elseif (data[i][1]==9 or data[i][1]==10) then
				vertex(contador*31,h-50)
				image(data[i][2], contador*31-11, h-69)
			elseif (data[i][1]==11 or data[i][1]==12) then
				vertex(contador*31,h-60)
				image(data[i][2], contador*31-11, h-79)
			end
			res = (contador*31)
			contador = contador + 1
		else
			endShape()
			translate(0,h+20)
			DklRectCatAxis(w, h, categories)
			res = 0
			contador = 1
			beginShape()
		end
	end
	endShape()

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
