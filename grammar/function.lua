
_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end


example[[
function simple(a,b)
return a+b
end

print(simple(1,2))
]]

example[[
function multi_ret()
return 1,2,4
end
print(multi_ret())
]]



example[[
-- closure test
function make_counter()
    local n = 0
    return function ()
        n = n + 1
        return n
        end
end

local counter = make_counter()
print(counter())
print(counter())
]]


example[[

function fib(n)
if n==0 or n==1 then return 1 end
return fib(n-1)+fib(n-2)
end

print(fib(20))
]]

example[[
function loop(n)
if n <= 0 then return end
io.write(n,',')
return loop(n-1)
end

loop(1000)
]]


