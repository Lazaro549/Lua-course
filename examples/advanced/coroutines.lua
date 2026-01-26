local co = coroutine.create(function()
    for i = 1, 3 do
        print("Coroutine step:", i)
        coroutine.yield()
    end
end)

while coroutine.status(co) ~= "dead" do
    coroutine.resume(co)
end
