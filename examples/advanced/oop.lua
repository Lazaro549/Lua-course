local Animal = {}
Animal.__index = Animal

function Animal:new(name)
    return setmetatable({ name = name }, self)
end

function Animal:speak()
    print("The animal makes a sound")
end

local Dog = setmetatable({}, Animal)
Dog.__index = Dog

function Dog:speak()
    print(self.name .. " says: Woof!")
end

local dog = Dog:new("Buddy")
dog:speak()
