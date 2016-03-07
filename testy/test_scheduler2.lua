--test_scheduler2.lua
package.path = package.path..";../?.lua"


local Scheduler = require("schedlua.scheduler")()
local Kernel = require("schedlua.kernel")({ Scheduler=Scheduler })
local Task = require("schedlua.task")
-- local taskID = 0;

--[[
local function getNewTaskID()
	taskID = taskID + 1;
	return taskID;
end
--]]

-- local function spawn(scheduler, func, priority, ...)

-- 	local task = Task(func, ...)
-- 	task.TaskID = getNewTaskID();
--   task.priority = priority

-- print(task.priority)
-- 	scheduler:scheduleTask(task, {...});

-- 	return task;
-- end


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

local function main()
	print('test')
	local t1 = Kernel:spawn(task1, true)
	-- local t2 = Kernel:spawn(task2, false)
	-- print(Kernel.run)

--[[
	while (true) do
		--print("STATUS: ", t1:getStatus(), t2:getStatus())
		if t1:getStatus() == "dead" and t2:getStatus() == "dead" then
			break;
		end
		--Scheduler:step()
	end
--]]

end

main()
