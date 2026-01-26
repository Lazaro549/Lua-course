local Todo = require("todo")

local todo = Todo:new()

while true do
    print("\n1. Add task")
    print("2. List tasks")
    print("3. Exit")

    io.write("Choose option: ")
    local choice = io.read()

    if choice == "1" then
        io.write("Enter task: ")
        local task = io.read()
        todo:add(task)
    elseif choice == "2" then
        todo:list()
    elseif choice == "3" then
        print("Goodbye!")
        break
    else
        print("Invalid choice")
    end
end
