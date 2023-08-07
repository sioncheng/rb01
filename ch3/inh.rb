class Publication
    attr_accessor :publisher
end

class Magazine < Publication
    attr_accessor :editor
end

class Ezine < Magazine
end

m = Magazine.new
m.publisher = 'p'
m.editor = 'e'

puts m.publisher, m.editor

ez = Ezine.new
ez.publisher = 'ep'
ez.editor = 'ee'

puts ez.publisher, ez.editor