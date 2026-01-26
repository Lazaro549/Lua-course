local function greet(name)
    return "Hello, " .. name
end

print(greet("Lua"))

local add = function(a, b)
    return a + b
end

print(add(3, 4))
