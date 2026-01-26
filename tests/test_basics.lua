
---

## 🟢 Basic Tests

---

### `test_basics.lua`

```lua
package.path = package.path .. ";../?.lua"

lu = require("luaunit")

TestBasics = {}

function TestBasics:testVariables()
    local x = 10
    local y = "Lua"
    lu.assertEquals(x, 10)
    lu.assertEquals(y, "Lua")
end

function TestBasics:testControlFlow()
    local x = 5
    local result

    if x > 3 then
        result = "greater"
    end

    lu.assertEquals(result, "greater")
end

os.exit(lu.LuaUnit.run())
