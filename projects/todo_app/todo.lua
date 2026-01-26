local Todo = {}
Todo.__index = Todo

function Todo:new()
    return setmetatable({ tasks = {} }, self)
end

function Todo:add(task)
    table.insert(self.tasks, task)
end

function Todo:list()
    for i, task in ipairs(self.tasks) do
        print(i .. ".", task)
    end
end

return Todo
