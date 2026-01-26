local Vector = {}
Vector.__index = Vector

function Vector:new(x, y)
    return setmetatable({ x = x, y = y }, self)
end

function Vector.__add(a, b)
    return Vector:new(a.x + b.x, a.y + b.y)
end

local v1 = Vector:new(1, 2)
local v2 = Vector:new(3, 4)
local v3 = v1 + v2

print(v3.x, v3.y)
