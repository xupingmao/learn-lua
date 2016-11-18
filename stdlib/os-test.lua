-- os.clock
-- os.date
-- os.difftime
-- os.execute
-- os.exit
-- os.getenv
-- os.remove
-- os.rename
-- os.setlocale
-- os.time
-- os.tmpname

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

io.open("test.txt", "w"):close()

example("os.clock()")

example("os.difftime(100,200)")

example("os.execute('echo hello')")

example("os.getenv('PATH')")

example("os.rename('test.txt', 'test1.txt')")

example("os.remove('test1.txt')")

example("os.date()")

example("os.setlocale('zh.CN')")

example("os.setlocale('us.EN')")

example("os.date()")

example("os.time()")

example("os.tmpname()")

-- last
example("os.exit(0)")