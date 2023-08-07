obj = Object.new
def obj.+(other)
    "Trying to add something(#{other}) to me, eh?"
end

puts obj + 'a'
puts obj + 1


class Banner
    def initialize(text)
        @text = text
    end
    def to_s
        @text
    end
    def +@
        b = Banner.new(@text.upcase)
        b
    end
    def -@
        b = Banner.new(@text.downcase)
        b
    end
end

b = Banner.new("ruby ruby")
puts b
bb = +b
puts bb