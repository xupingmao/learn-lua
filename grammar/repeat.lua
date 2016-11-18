
_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end


example[[
    local i = 0
    repeat
        print ("i=" .. i)
        i = i + 1
    until i > 10]]
    
