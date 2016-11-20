-- table.lua

_eg_index = 1
function example(code)
    print("eg" .. _eg_index .. ":")
    print(code)
    local r = loadstring(code)
    print(">>>", r())
    _eg_index = _eg_index + 1
end

function print_table(tb)
    for k,v in pairs(tb) do
        print(k,v)
    end
    print("length="..#tb)
end

example[[
    local tb = {1,2,3} -- list
    print_table(tb)
]]

example[[
    local tb = {
        name = "test",
        age = 10,
        address = "Beijing"
    }
    print_table(tb)
]]

example[[
    local tb = {
        "first",
        "second",

        name = "test",
        age = 10,
        address = "Shanghai"
    }

    print_table(tb)
]]

