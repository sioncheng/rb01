
e = Enumerator.new do |y|
    i = 0
    while i < 10 do
        y << i
        i = i + 1
    end
end

puts e

e.each {|x| puts x}


class Fixnum
    def my_times
        if block_given?
            for i in 1..self
                yield i
            end
        else
            e = Enumerator.new do |y|
                i = 0
                while i < self do
                    y << i
                    i = i + 1
                end
            end
            return e
        end
    end
end

3.my_times {|x| puts x}

puts 3.my_times