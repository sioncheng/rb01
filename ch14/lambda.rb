lam = lambda {puts "A lambda!"}
lam.call

lam = lambda {|x| puts x}
lam.call(3)
#lam.call(3,3)

p = Proc.new {|x| puts x}
p.call(3)
p.call
p.call(3,3)