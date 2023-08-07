
class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name, @age = name, age
    end
    def method_missing(m, *args, &block)
        if /set_(.*)/.match(m)
            #puts "#{$1}="
            self.public_send("#{$1}=", *args)    
        else
            super
        end
    end
    def to_s
        "#{name}, #{age}"
    end
end

p = Person.new("Joe", 37)
p.set_age(38)
puts p



