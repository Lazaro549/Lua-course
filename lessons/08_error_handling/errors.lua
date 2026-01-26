local function risky()
    error("Something went wrong!")
end

local success, message = pcall(risky)

print("Success:", success)
print("Message:", message)
