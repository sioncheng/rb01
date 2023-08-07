module M
    def a
        puts "M'a"
    end
end

class D1 
    include M
end

class D2
    extend M
end

D1.new.a

D2.a

D2.new.a