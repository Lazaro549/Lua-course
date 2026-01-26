lu = require("luaunit")

TestTables = {}

function TestTables:testArray()
    local t = {1, 2, 3}
    lu.assertEquals(#t, 3)
end

function TestTables:testDictionary()
    local person = { name = "Lua", age = 25 }
    lu.assertEquals(person.name, "Lua")
    lu.assertEquals(person.age, 25)
end

os.exit(lu.LuaUnit.run())
