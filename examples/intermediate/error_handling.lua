local function divide(a, b)
    if b == 0 then
        error("Division by zero")
    end
    return a / b
end

local ok, result = pcall(divide, 10, 0)
print(ok, result)
