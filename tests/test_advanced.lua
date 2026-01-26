lu = require("luaunit")

TestAdvanced = {}

function TestAdvanced:testCoroutine()
    local count = 0

    local co = coroutine.create(function()
        for i = 1, 3 do
            count = count + 1
            coroutine.yield()
        end
    end)

    coroutine.resume(co)
    coroutine.resume(co)
    coroutine.resume(co)

    lu.assertEquals(count, 3)
end

function TestAdvanced:testMetatableAdd()
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

    lu.assertEquals(v3.x, 4)
    lu.assertEquals(v3.y, 6)
end

os.exit(lu.LuaUnit.run())
