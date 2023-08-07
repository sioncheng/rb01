string = "ruby"

def string.to_a
    split(//)
end

a = Array(string)

puts a