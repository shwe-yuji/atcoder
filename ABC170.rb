# 問題1
array = gets.split(" ").map(&:to_i)
puts array.index(0) + 1

# 問題2
x, y = gets.split(" ").map(&:to_i)
0.upto(x) do |i|
  if (i * 2) + ((x - i) * 4) == y
    puts "Yes"
    exit
  end
end
puts "No"

# 問題3
x, n = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
if !array.include?(x)
  puts x
  exit
end
nums = []
for i in (x + 1)..101
  if !array.include?(i)
    nums << [i, (x - i).abs]
    break
  end
end
i = 0
while i < x
  if !array.include?(x - 1 - i)
    nums << [(x - 1 - i), (x - 1 - i - x).abs]
    break
  end
  i += 1
end
puts nums.sort_by{|item| [item[1], item[0]]}[0][0]