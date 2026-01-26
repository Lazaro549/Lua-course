package.path = package.path .. ";../examples/intermediate/modules/?.lua"

lu = require("luaunit")
logger = require("logger")

TestModules = {}

function TestModules:testLoggerExists()
    lu.assertNotNil(logger)
    lu.assertNotNil(logger.info)
    lu.assertNotNil(logger.warn)
end

os.exit(lu.LuaUnit.run())
