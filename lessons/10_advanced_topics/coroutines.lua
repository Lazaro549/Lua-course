local co = coroutine.create(function()
    for i = 1, 3 do
        print("Coroutine:", i)
        coroutine.yield()
    end
end)

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
