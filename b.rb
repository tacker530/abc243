# B - Hit and Blow
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

union = (A & B).count
match = 0 
A.each_with_index do |a,i|
  if a == B[i] then
    match += 1
  end
end
puts match
puts ( union - match )