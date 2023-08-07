
str = "This is a string"

class << str
    def hi
        puts self
    end
end

str.hi

class Person
    attr_accessor :name
end

david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"

# def david.name
#     "[]"
# end

module Secretive
    def name
        "[]"
    end
end

class << ruby
    include Secretive
end

puts david.name
puts joe.name
puts ruby.name

class C
    def talk
        puts "Hi from original class!"
    end
end

module M
    def talk 
        puts "Hello from module!"
    end 
end

c = C.new
puts "no module"
c.talk
puts c.singleton_class
class << c
    include M
end
puts "include module"
c.talk
puts c.singleton_class

str = "a string"
puts str.singleton_class.ancestors
