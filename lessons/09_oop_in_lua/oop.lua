local Person = {}
Person.__index = Person

function Person:new(name)
    local obj = setmetatable({}, self)
    obj.name = name
    return obj
end

function Person:greet()
    print("Hello, my name is " .. self.name)
end

local p = Person:new("Lua")
p:greet()
