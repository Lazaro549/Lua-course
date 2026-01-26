local function multiply(a, b)
    return a * b
end

local function apply(fn, a, b)
    return fn(a, b)
end

print(apply(multiply, 3, 4))
