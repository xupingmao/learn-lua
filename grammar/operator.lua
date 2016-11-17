
_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end

function mysplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

function examplelines(lines)
    print ("eg:" .. _eg_cnt)
    local lines = mysplit(lines, "\n")
    for k,line in pairs(lines) do
        print (line)
        local f = loadstring(line)
        local r = pcall(f)
        if r then
            print(r)
        else
            print("FAIL")
        end
    end
    _eg_cnt = _eg_cnt + 1
end


examplelines([[
    n = 10.1;
    print ( n + 10.2)
    print ( n - 123.23)
    print ( n * 1.2)
    print ( n / 12.3)
    print ( n % 10 )
    print ( n % 10.4)
    -- print ( n << 1) not support
    -- print ( n >> 1) not support
    print ( n + '123')
    print ( n - '1122')
    print ( n * '1.2')
    print ( n / '1.3')
    local s = "10.3" ; print ( n + s) -- it's ok, so this is not done by compiler but by virtual machine
    -- vm code:
    -- if (isnumber(left) && isnumber(right)) ret = left + right
    -- else ret = tonumber(left) + tonumber(right)
]])


examplelines([[
    s = "hello"
    print (s .. "world")
    print (s .. 123) -- concat string and number
    print (s .. {1,2,3}) -- concat string and table, FAIL
    print (s .. function test() return nul; end) -- concat string and function, FAIL
]])