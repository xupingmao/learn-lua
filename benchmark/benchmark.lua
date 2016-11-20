
function title(t)
    print()
    print(t)
    print(string.rep("=", 60))
    print()
end

function test_gap()
    print()
    print(string.rep("=", 60))
end


-- test, record time cost

function test(f, ...)
    local t1 = os.clock()
    f(...)
    local t2 = os.clock()
    print("Lua Cost:" .. (t2-t1) .. "s")
end

-- fib
title("Test recursive fib(35)")
function fib(n)
    if n == 0 or n == 1 then return 1 end
    return fib(n-1) + fib(n-2)
end

test(fib, 32)
os.execute("python benchmark.py fib")

-- Global Loop
function gloop(n)
    for i = 1, n do
        j = i * 1.2 + i / 1.2 - i % 1.2
    end
end
title[[Test Global Loop 1000000 times]]
test(gloop, 1000000)
os.execute("python benchmark.py gloop")

-------------------------
-- Local Loop
function lloop(n)
    local i, j;
    for i = 1, n do
        j = i * 1.2 + i / 1.2 - i % 1.2
    end
end

title[[Test Local Loop 1000000 times]]
test(lloop, 1000000)
os.execute("python benchmark.py lloop")

-- string concat
function gen_random_str(length, count)
    -- contains 0, count
    local ascii_a = string.byte('a')
    for i = 1, count do
        local str = ''
        for j = 1, length do
            str = str .. string.char(26 * math.random() + ascii_a)
        end
        -- print(str)
    end
end

title[[Test String Concatenation]]
test(gen_random_str, 30, 1000)
os.execute("python benchmark.py string")

-- table find

-- list get/set/insert

-- function call
