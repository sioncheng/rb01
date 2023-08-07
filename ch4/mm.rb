class D 
    def a
        puts "a"
    end
    def method_missing(m, *args)
        puts "Whoooo no #{m}"
    end
end


d = D.new
d.a
d.b