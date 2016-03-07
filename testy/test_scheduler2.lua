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

local function main()
	local t1 = spawn(task1, true)
	-- local t2 = spawn(task2, false)


end

main()