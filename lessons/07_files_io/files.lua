local file = io.open("example.txt", "w")
file:write("Hello from Lua file I/O!")
file:close()

local readFile = io.open("example.txt", "r")
print(readFile:read("*a"))
readFile:close()
