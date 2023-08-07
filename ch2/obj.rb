obj = Object.new

def obj.hello
    puts "Hello Ruby"
end

def obj.greeting(g)
    puts "Hello " + g
end

obj.hello
obj.greeting("ruby")