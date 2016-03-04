package.path = package.path..";../?.lua"

local Kernel = require("schedlua.kernel")()
Task = require('schedlua.task')


-- crap

local read = {}

read = task.create(read, 'reading', 1)

io.write(read)


-- signal

