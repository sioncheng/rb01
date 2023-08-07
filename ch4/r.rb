module M
    def report
        puts "'remport' method in module M"
    end
end

class C
    include M
end

class D < C
end

obj = D.new
obj.report