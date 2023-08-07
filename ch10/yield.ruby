
obj = Object.new

def obj.each
    yield 1
    yield 2
    yield 3
end

puts "each"

obj.each {|x| puts x}

puts "next break"

obj.each do |x|
    next if x < 2
    puts x
    break if x == 2
end