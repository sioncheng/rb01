def a(s)
    puts s
    #yield
    yield if block_given?
end

def b(s)
    puts s
end

a(1) # {puts 10}
b(2)

ar = [1,2,3]
ar.map {|n| n * 2}
puts ar
puts ar.map

3.times {puts "yiled"}


class Integer
    def my_times
        c = 0
        puts "c = 0"
        puts "until c == #{self}..."
        until c == self
            yield c if block_given?
            c += 1
        end
        self
    end
end

3.my_times {puts "my"}

ar.each {|e| puts e}


class Array
    def my_each
        puts "my_each"
        c = 0
        until c == self.size
            yield self[c] if block_given?
            c += 1
        end
        puts "my_each"
        self
    end
end

ar.my_each {|e| puts e}

class Array
    def my_map
        puts "my_map"
        c = 0
        acc = []
        if block_given? then
            until c == self.size
                y = yield self[c]
                acc << y
                c = c + 1
            end
        end
        acc
    end
end

puts ar.my_map { |e| e * 3}
