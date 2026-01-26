local file = io.open("data.txt", "w")
file:write("Lua file example")
file:close()

local reader = io.open("data.txt", "r")
print(reader:read("*a"))
reader:close()
