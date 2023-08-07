module Stacklike
    def stack
        @stack ||= []
    end
    def add_to_stack(o)
        stack.push(o)
    end
    def take_from_stack
        stack.pop
    end 

end