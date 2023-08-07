require_relative "sl"

class Suitcase
end

class CargoHold
    include Stacklike
    def load_and_remport(obj)
        print "Loading object "
        puts obj.object_id
        add_to_stack(obj)
    end
    def unload
        take_from_stack
    end
end

ch = CargoHold.new
s1 = Suitcase.new
s2 = Suitcase.new
s3 = Suitcase.new

ch.load_and_remport(s1)
ch.load_and_remport(s2)
ch.load_and_remport(s3)

first_unloaded = ch.unload

print "The first suitcase off the plane is "
puts first_unloaded.object_id