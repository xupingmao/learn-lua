

_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end

example([[
    a = 10;
    return a;
]])

example([[
    a, b = 1,2 
    return a,b
]])

example([[
    a, b = 10;
    return a,b
]])

example([[
    a = 10,20;
    return a;
]])
