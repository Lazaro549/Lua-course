lu = require("luaunit")

TestFunctions = {}

local function add(a, b)
    return a + b
end

local function multiply(a, b)
    return a * b
end

function TestFunctions:testAdd()
    lu.assertEquals(add(2, 3), 5)
end

function TestFunctions:testMultiply()
    lu.assertEquals(multiply(4, 5), 20)
end

os.exit(lu.LuaUnit.run())
