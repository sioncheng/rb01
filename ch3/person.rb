class Person
    # def set_name(name)
    #     @name = name
    # end

    def initialize(name)
        @name = name
    end

    def get_name()
        @name
    end
end

joe = Person.new("Joe")
# joe.set_name("Joe")
puts joe.get_name