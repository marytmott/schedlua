--test_scheduler.lua
package.path = package.path..";../?.lua"

Scheduler = require("schedlua.scheduler")()
Task = require("schedlua.task")
local taskID = 0;

local function getNewTaskID()
	taskID = taskID + 1;
	return taskID;
end

local function spawn(scheduler, func, ...)
	local task = Task(func, ...)
	task.TaskID = getNewTaskID();
	scheduler:scheduleTask(task, {...});

	return task;
end


local function task1()
	print("I am running forever to test the tick")
	while(true) do
	end
end

local function task2()
	print("I am also running forever to test the tick")
	while(true) do
	end
end

local function main()
	local t1 = spawn(Scheduler, task1, true)
	local t2 = spawn(Scheduler, task2, false)

	while (true) do
		--print("STATUS: ", t1:getStatus(), t2:getStatus())
		if t1:getStatus() == "dead" and t2:getStatus() == "dead" then
			break;
		end
		Scheduler:step()
	end
end

main()