
math.randomseed(os.time())

local secret = math.random(1, 100)
local attempts = 0

print("Guess the number between 1 and 100")

while true do
    io.write("Your guess: ")
    local guess = tonumber(io.read())
    attempts = attempts + 1

    if guess == secret then
        print("Correct! Attempts:", attempts)
        break
    elseif guess < secret then
        print("Too low!")
    else
        print("Too high!")
    end
end
