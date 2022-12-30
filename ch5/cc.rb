class CC
    def initialize(n)
        @n = n
    end
    def n
        @n
    end
    def compare(c)
        r = 0
        if c.n > n
            r = -1
        elsif c.n == n
            r = 0
        else 
            r = 1
        end
        return r
    end
    protected :n
end

c1 = CC.new(1)
c2 = CC.new(2)

r = c1.compare(c2)
puts r