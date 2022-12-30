class Violin
    attr_accessor :e 
    attr_accessor :a
    class String 
        attr_accessor :pitch
        def initialize(pitch)
            puts "Violin::String's initialize"
            @pitch = pitch
        end
        def to_s
            @pitch
        end
        def to_str
            to_s
        end
    end
    def initialize
        @e = String.new("E")
        @a = String.new("A")
    end
    def history
        ::String.new("history")
    end
end

v = Violin.new
puts v.e
puts "a" + v.e
puts v.history