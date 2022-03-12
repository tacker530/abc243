# A - Shampoo
V,A,B,C = gets.chomp.split.map(&:to_i)
FMT={"F"=>A,"M"=>B,"T"=>C}

v = V
used = ["F","M","T"]

loop do
  used.each do |u|
    v = v - FMT[u]
  #  puts v
    if v < 0 then
      puts u
      exit
    end
  end
end