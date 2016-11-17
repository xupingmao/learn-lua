
_eg_cnt = 1;
function example(msg)
    print("eg:" .. _eg_cnt) -- print empty line
    print( msg)
    r = loadstring(msg)
    print(r())
    _eg_cnt = _eg_cnt + 1
end

example([[
    for i = 1,10 do
        print (i)
    end
]])

example([[
    for k,v in pairs({1,32,34, name="hello", age=10}) do
        print(k,v)
    end
]])

example([[
    -- use next function
    for k,v in next, ({1,32,34, name="hello", age=10}) do
        print(k,v)
    end
]])

example([[
    for k,v in ipairs({1,32,34, name="hello", age=10}) do
        print(k,v)
    end
]])

-- 迭代器
-- itearator
-- 实际上是生成器(generator),迭代工作由for语句完成

example([[
    -- 无状态迭代
    -- no state
    function my_iter(a, i)
        if i < 10 then
            return i+1, i*10
        end
    end

    function my_pairs(a)
        return my_iter, a, 0
    end

    for j in my_pairs(1) do
        print(j)
    end
]])

example([[
    -- 多状态迭代
    -- multi state
    function iterator(state)
        local s = 1
        local e = 0
        while state.count < 10 do
            -- s, e = string.find(state.line, "%w+", state.pos)
            state.count = state.count + 1
            return state.count
        end
        return nil
    end

    function allwords()
        local state = {line = {"word1", "word2", "word3"}, pos = 1, count = 1}
        return iterator, state
    end

    for word in allwords() do
        print(word)
    end

]])

-- 真正的迭代器

example([[
    function real_iterator (func) 
        for i = 1, 10 do
            func(i)
        end
    end

    real_iterator(function (number) 
        print('now is '..number)
    end)

]])