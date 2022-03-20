# D - Moves on Binary Tree

N,X = gets.chomp.split.map(&:to_i)
S   = gets.chomp.chars


def up(arg)
  arg / 2
end

def right(arg)
  arg * 2 + 1
end

def left(arg)
  arg * 2
end

pos = X
S.each do |s|
  if s == "U" then
    pos = up(pos)
  end
  if s == "R" then
    pos = right(pos)
  end
  if s == "L" then
    pos = left(pos)
  end
end
puts pos