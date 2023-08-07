
pr = Proc.new {puts "Inside a Proc's block"}
pr.call

pr = proc {puts "Inside a Proc's block"}
pr.call

p = Proc.new {|x| puts x.upcase}
%w{hello ruby}.each(&p)

def capture_block(&block)
    block.call 
end

p = Proc.new {puts "Inside a Proc's block"}
capture_block(&p)
capture_block {puts "Inside a block"}

def a(ab) 
    puts ab
    yield if block_given?
end

a(1)
a(2) {puts "Inside a block"}

class Person
    attr_accessor :name

    def self.to_proc
        Proc.new {|person| puts person.name}
    end
end

p1, p2 = Person.new, Person.new
p1.name = "p1"
p2.name = "p2"

[p1, p2].each(&Person)

m = %w{word, bc}.map(&:capitalize)
puts m
m = %w{word, ab}.map {|str| str.public_send(:capitalize)}
puts m