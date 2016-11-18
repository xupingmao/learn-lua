-- string test

-- string.byte
-- string.char
-- string.dump
-- string.find
-- string.format
-- string.gfind  --> string.gmatch
-- string.gmatch
-- string.gsub
-- string.len
-- string.match
-- string.rep    --> repeat
-- string.reverse
-- string.sub
-- string.lower
-- string.upper


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

str = 'hello, world'

print ('str=' .. str )

example ('string.byte(str,1)')

example ('string.char(48)')

-- TODO
head ( 'string.dump', 'dump function to string')
code = string.dump(head)
print (code)

example ( 'string.find(str,\'hello\')' )

example ('string.format("hello,%s", "world")')

example ('string.gmatch("hello,lua", "%a+") --> return a iterator')
for m in string.gmatch("hello,lua", "%a+") do
    print(m)
end

example ('string.sub("hello,world",2)')

example ('string.sub("hello,world",2,3)')

example ('string.gsub("hello,world,world", "world", "lua")')

example('string.len("hello,lua")')

example ('string.match("there are 2 questions", "%d %a+")')

-- repeat
example ('string.rep("hello,world",2)')

example ('string.reverse("hello,world")')

example ('string.upper("hello,world")')

example ('string.lower("HELLO,world")')


