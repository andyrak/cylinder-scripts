local function cards(view, percent, width, height)
    local angle = percent*math.pi*2    
    local percent2 = math.abs(percent)
    local midX = width/2
    local midY = (height-64)/2
    local numIcons = #view.subviews
    
    local i = 0
    while i <= numIcons do
        i = i + 1
        local v = view[i]
        if v == nil then break end
        v:translate(width*percent, (midY - v.y)*percent2*2, 0)
	v.alpha = 1 - (percent2*1.8)
    end
end

return function(page, offset, width, height)
    local percent = offset/width
    cards(page, percent, width, height)
end

