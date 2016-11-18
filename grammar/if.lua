_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end


example[[
local a = 10
if a < 10 then
    print('a<10')
elseif a == 10 then
    print('a=10')
else
    print('a>10')
end]]