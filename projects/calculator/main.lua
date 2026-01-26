
print("Simple Calculator")
print("Choose operation: +  -  *  /")

io.write("Operation: ")
local op = io.read()

io.write("First number: ")
local a = tonumber(io.read())

io.write("Second number: ")
local b = tonumber(io.read())

local result

if op == "+" then
    result = a + b
elseif op == "-" then
    result = a - b
elseif op == "*" then
    result = a * b
elseif op == "/" then
    if b == 0 then
        print("Error: Division by zero")
        return
    end
    result = a / b
else
    print("Invalid operation")
    return
end

print("Result:", result)
