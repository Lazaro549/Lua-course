lu = require("luaunit")

Person = {}
Person.__index = Person

function Person:new(name)
    return setmetatable({ name = name }, self)
end

function Person:greet()
    return "Hello " .. self.name
end

TestOOP = {}

function TestOOP:testPerson()
    local p = Person:new("Lua")
    lu.assertEquals(p.name, "Lua")
    lu.assertEquals(p:greet(), "Hello Lua")
end

os.exit(lu.LuaUnit.run())
