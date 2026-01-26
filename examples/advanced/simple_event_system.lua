local Event = {}

function Event:new()
    return { listeners = {} }
end

function Event:on(fn)
    table.insert(self.listeners, fn)
end

function Event:emit(...)
    for _, fn in ipairs(self.listeners) do
        fn(...)
    end
end

local onMessage = Event:new()

onMessage:on(function(msg)
    print("Listener 1:", msg)
end)

onMessage:on(function(msg)
    print("Listener 2:", msg)
end)

onMessage:emit("Hello Events!")
