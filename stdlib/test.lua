
_eg_index = 1
function example(code)
    print("eg" .. _eg_index .. ":")
    print(code)
    local r = loadstring(code)
    print(">>>", r())
    _eg_index = _eg_index + 1
end

-- return example;
-- example will be required.