
m = 10
[1,2,3].each {|x| puts x * m}

def multiply_by(m)
    Proc.new {|x| puts x * m}
end

mult = multiply_by(11)
mult.call(12)