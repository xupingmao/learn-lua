-- File: load-test.lua

function head (msg) 
    print()
    print(msg)
end

_eg_index = 1
function example(code)
    print()
    print(_eg_index, code)
    local r = loadstring("return " .. code)
    print(">>>", r())
    _eg_index = _eg_index + 1
end