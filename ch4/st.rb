require_relative "sl"

class Stack
    include Stacklike
end

s = Stack.new

s.add_to_stack(1)

puts s.take_from_stack()