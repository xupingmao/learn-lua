_eg_index = 1
function example(code)
    print()
    print(_eg_index, code)
    local r = loadstring("return " .. code)
    print(">>>", r())
    _eg_index = _eg_index + 1
end

example[[type("Hello,World")]]

example[[type(10.3)]]

example[[type(print)]]

example[[type]]

example[[type(true)]]

example[[type(nil)]]

example[[type(x)]]

example[[type(type(x))]]  -- type(x) returns string
