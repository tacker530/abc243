# C - Collision 2
N = gets.chomp.to_i
pos = []
N.times do |i|
  pos[i] = gets.chomp.split.map(&:to_i)
end
S = gets.chomp.chars

lat = []
S.each_with_index do |s,i|
  pos[i] <<  s
end

point = {}
pos.each do |u|
  point[u[1]] ||= []
  point[u[1]] << [u[0],u[2]]
end
#pp point

point.each_key do |k|
  if point[k].size > 1 then
    last = "L"
    point[k].sort_by{|x| x[0] }.each do |unit|
      if unit[1] == "L" then
        if last == "R" then
          puts  "Yes"
          exit
        else
          last = unit[1]
        end
      else
        last = unit[1]
      end
    end
  end
end 

puts "No"



