schedlua is yet another set of routines concerned with the scheduling
of work to be done in a cooperative multi-tasking system, such as Lua.

Design criteria
- Complexity by composition rather than mololithic structure
- Simplicity through leveraged layering

scheduler
=========
The first set of methods are related to the scheduler.  The sceduler
maintains a 'readyToRun' list of tasks.  Is supports a "scheduleTask()"
function, and not much else.  The scheduler itself does not get involved
in the actual creation of tasks.  It is assumed that they are created
from a different API, and simply handed to the scheduler when scheduling
<<<<<<< HEAD
operations need to occur with.  The basis scheduler is a simple FIFO scheduler,
=======
operations need to occur with.  The basis scheduler is a simple FIFO scheduler, 
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
which gives no weight to one task over another.

kernel.lua
==========
Although it is possible to program against the scheduler/task combo, you're
<<<<<<< HEAD
actually better off not doing it this way because it is so rough.  Instead, an application should use the kernel module
=======
actually better off not doing it this way because it is so rough.  Instead, an application should use the kernel module 
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
local Kernel = require("kernel")


functor.lua
===========

	A functor is a function that can stand in for another function.
<<<<<<< HEAD
	It is somewhat of an object because it retains a certain amount
	of state.  In this case, it retains the target object, if there is
=======
	It is somewhat of an object because it retains a certain amount 
	of state.  In this case, it retains the target object, if there is 
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
	any.

	This is fairly useful when you need to call a function on an object
	at a later time.

	Normally, if the object is constructed thus:

	function obj.func1(self, params)
	end

	You would call the function thus:
	someobj:func1(params)

	which is really
	someobj.func1(someobj, params)

	The object instance is passed into the function as the 'self' parameter
	before the other parameters.

<<<<<<< HEAD
	This is easy enough, but when you're storing the function in a
=======
	This is easy enough, but when you're storing the function in a 
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
	table, for later call, you have a problem because you need to store
	the object instance as well, somewhere.

	This is where the Functor comes in.  It will store both the target
	(if there is one) and the function itself for later execution.

	You can use it like this:

	funcs = {
		routine1 = Functor(obj.func1, someobj);
		routine2 = Functor(obj.func1, someobj2);
		routine3 = Functor(obj.func2, someobj);
	}
<<<<<<< HEAD

=======
	
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
	Then use it as:
	  funcs.routine1(params);
	  funcs.routine3(params);



References:
* Relevant Blog Entries
<<<<<<< HEAD
** https://williamaadams.wordpress.com/?s=schedlua
=======
# lua-heaps

[![Build Status](https://travis-ci.org/geoffleyland/lua-heaps.svg?branch=master)](https://travis-ci.org/geoffleyland/lua-heaps)

This started as a benchmark for binary and skew heaps in Lua.  It compares them
to sorting a table, which doesn't fare well.

Now it's a reasonably good implementation of both kinds of heaps,
probably a little better for binary heaps than skew heaps because I use binary heaps.

The binary heap implementation tries to keep garbage creation to a minimum,
which seems to help speed things up.

Usage is:

    local heap = require"binary_heap" -- or "skew_heap"
    local H = heap:new()

    H:insert(2, "world")
    H:insert(1, "hello")

    local k1, w1 = H:pop()
    local k2, w2 = H:pop()

    print(k1, k2)  -- prints "hello world"

Keys and values are kept separate because it can, in some cases (like my common one)
reduce garbage creation.

You can provide a comparison function to `heap:new`, which will be passed the keys
(but not values) of the two items to compare.


The heaps tested against Lua 5.1-5.3 and LuaJIT.
=======
** https://williamaadams.wordpress.com/?s=schedlua
>>>>>>> 57393881e829c5beac33ea7d3e69295203e0e85c
