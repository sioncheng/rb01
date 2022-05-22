cdat = File.open("c.dat", "r")
cout = File.open("cout.dat", "w")
cdat.each do |line|
    celsius = line.to_i
    fahrenheit = (celsius. * 9 / 5) + 32
    cout.puts fahrenheit.to_s
end
cdat.close
cout.close