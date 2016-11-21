-- table.lua


-- table.concat (table [, sep [, i [, j]]])
-- table.insert (table, [pos,] value)
-- table.maxn(table)
-- table.remove(table [, pos)
-- table.sort(table [, comp)

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


example[[
    local tb = {
        name = "test",
        age  = 24,
        address = "Shanghai"
    }
    local i,v;
    i = 0;
    local k, v = nil, nil;
    repeat
        i = i + 1
        k,v = next(tb, k)
        print (i, k, v)
    until k == nil;
]]

-- table.concat(table [,sep [, i [, j]]])

example[[
    local tb1 = {
        "1",
        "2",
        "3",
    }
    print(table.concat(tb1))              -- >>> 123
    print(table.concat(tb1,","))          -- >>> 1,2,3
    print(table.concat(tb1,",", 1, #tb1)) -- >>> 1,2,3
]]


-- table.insert(table, [pos,] value)

example[[
    local tb1 = { 1 };
    table.insert(tb1, 2);
    print_table(tb1)
    table.insert(tb1, 5, 1); -- tb1[5] = 1; 数组部分不变
    print_table(tb1);
    table.insert(tb1, 1, -1); 
    print_table(tb1);        --> array = [-1,1,3]
]]

-- table.maxn(table)

example[[
    local tb1 = {
        "1",
        "2",
        "3",
    }
    
    print(table.maxn(tb1)); -- >>> 3
    tb1.name = "test";
    print(table.maxn(tb1)); -- >>> 3
]]


-- table.remove(table [,pos])

-- table.sort(table [, comp])

example[[
    local tb = {
        1, 4, 2, 5, 3
    }
    
    local result = table.sort(tb);
    print_table(tb);
    print_table(result); 
    
    result = table.sort(tb, function (a, b) 
        return b - a;
    end);
    
    print_table(result);
]]


    