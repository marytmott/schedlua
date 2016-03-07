--test_scheduler2.lua
package.path = package.path..";../?.lua"

-- local Scheduler = require("schedlua.scheduler")()
local Kernel = require("schedlua.kernel")() --({ Scheduler = Scheduler})


local function task1()
	print("I am running forever to test the scheduler")
	while(true) do
	end
end

local function task2()
	print("I am also running forever to test the scheduler")
	while(true) do
	end
end


run(task1, true)
spawn(task2, false)