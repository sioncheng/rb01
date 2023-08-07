class Attr
    attr_reader :a, :b
    attr_writer :a, :b
    attr_accessor :c
end

a = Attr.new
a.a = 1
a.b = 2
a.c = 3
puts a.a, a.b, a.c