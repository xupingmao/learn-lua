
-- io.open(filename[, mode])
-- io.flush()
-- io.close([file])
-- io.lines([filename])
-- io.output([file])
-- io.popen([prog [, mode]])
-- io.read()
-- io.write() --> io.output():write()
-- io.tmpfile()

-- file:seek
-- file:read
-- file:write
-- file:setvbuf(mode[,size])

function head (str) 
    print() -- print empty line
    print("TEST", str)
end

-- create file
head("io.open('test.txt','w')")
f = assert(io.open("test.txt", "w"))

head("f:write('test')")
f:write("hello")
print("f:flush()")
f:flush()  -- io.flush(f)
print("f:close()")
f:close()  -- io.close(f)

-- read file
head("f:read()")
f = assert(io.open("test.txt", "r"))

head("f:read()")
print(f:read())
f:close()

-- read lines
head("io.lines")
for line in io.lines("test.txt") do
    print(line)
end

-- io.output?
head("io.output")
-- io.output("test.txt")
print("io.output -> outputfile, default stdout")
out=io.output()
out:write("This is from io.output()")
out:write("\n")


head("io.popen('echo test')")
r=io.popen("echo test")
print(r:read())

head("io.read()")
print("input something:", "PASS")
-- r=io.read()
print("input=",r)

head("io.write(args...)")
io.write("test", "abc")

head("io.tmpfile()")
p=io.tmpfile()
print(p)
p:close()

head("io.type(obj)")
print(io.type(p))

head("file:seek([whence][,offset])", "PASS")

-- remove test.txt

os.remove("test.txt")
