--
-- DklRectCatAxis.lua
--
-- Döiköl Data Visualization Library
--
-- Copyright (c) 2017-2018 Armando Arce - armando.arce@gmail.com
--
-- This library is free software; you can redistribute it and/or modify it
-- under the terms of the MIT license. See LICENSE for details.
--

function DklRectCatAxisTicks(w, h, items)
	local axisMode = -1

	local size = 5
	local inc = h/size

	local i = 0
	while (i < h) do
		line(0, h-i, w, h-i)
		i = i + inc
	end
end

function DklRectCatAxisLabels(w, h, items)
	local axisMode = -1

	textAlign(RIGHT)

	local size = #items
	local inc = h/size+1

	local n = 1
	local i = 0
	line(0, 20, 0, 100)
	line(w, 20, w, 100)
	while (n <= size) do
		local label = items[n]
			text(label,10*axisMode,i+inc)
		i = i + inc
		n = n + 1
	end
end

function DklRectCatAxis(w, h, items)
	stroke(0)
	strokeWeight(1)
	DklRectCatAxisTicks(w, h,items)
	fill(0)
	DklRectCatAxisLabels(w, h,items)
end
