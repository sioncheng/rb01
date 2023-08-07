
def a(n)
    if n >= 10 then
        raise ArgumentError, 'number should less than 10 '
    else
        puts n*n
    end
end

# a(9)
# a(10)
# a(20)

begin
    a(20)
rescue => e
    puts "That was not an acceptable number!"
    puts "Here's the backtrace for this exception:"
    puts e.backtrace
    puts "And here's the exception object's message:"
    puts e.message
    puts "Raise"
    raise
ensure
    puts "Ensure"
end