
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

-- 处理尾递归
example[[
function loop(n)
if n <= 0 then return end
io.write(n,',')
return loop(n-1)
end

loop(1000)
]]


example[[
function two_arg_f(a,b)
print(a,b)
end

print(two_arg_f(1))        -- 1 nil
print(two_arg_f(1,2))      -- 1 2
print(two_arg_f(1,2,3))    -- 1 2
]]


-- 可变参数
-- 可变参数保存在arg参数里面
example[[
function arguments(...)
print(arg)
end

arguments()         -- table: 0xxx
arguments(1)        -- table: 0xxx
arguments(1,2)      -- table: 0xxx
arguments(1,2,3)    -- table: 0xxx
]]

-- 不声明...可变参数无效
example[[
function no_arg_f()
print(#arg, arg)
end

no_arg_f(1)         -- 0 table: 0xxx
no_arg_f(1,2)       -- 0 table: 0xxx
]]



-- 命名参数



-- 函数调用的简化写法
example[[
    print "test"

    function wrapper (a) 
        print ("value - " .. a)
    end

    wrapper "hello"
]]

-- 闭包

example[[
    function outter () 
        local name = "outter"
        function inner1 () 
            return function () 
                local new_name = name .. ":new"
                return new_name
            end
        end

        return inner1()
    end

    print(outter()()) -- This is OK, return 'outter:new'
]]