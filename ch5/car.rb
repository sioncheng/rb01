class Car
    @@makes = []
    @@cars = {}
    @@total_count = 0
    attr_reader :make
    def self.total_count
        @@total_count
    end
    def self.put_makes
        puts @@makes
    end
    def self.add_make(make)
        unless @@makes.include?(make)
            @@makes << make
            @@cars[make] = 0
        end
    end
    def initialize(make)
        if @@makes.include?(make)
            puts "Creating a new #{make}"
            @make = make
            @@cars[make] += 1
            @@total_count += 1
        else
            raise "No such make: #{make}."
        end
    end
    def make_mates
        @@cars[self.make]
    end
end

class Hybrid < Car
end


Car.add_make("Honda")
Car.add_make("Ford")

Car.put_makes

h1 = Car.new("Honda")
h2 = Car.new("Honda")
f1 = Car.new("Ford")

puts h1.make_mates
puts h1.make
puts Car.total_count
puts Hybrid.total_count