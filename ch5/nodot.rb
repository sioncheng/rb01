class A
    def A.no_dot
        puts "As long as self is C, you can call this method with no dot"
    end
    no_dot
end

a = A.new
A.no_dot