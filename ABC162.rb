# 問題1
n = gets.chomp
if n.include?("7")
  puts "Yes"
else
  puts "No"
end

# 問題2
n = gets.to_i
nums = []
for i in 1..n
  if i % 3 == 0 && i % 5 == 0 || i % 3 == 0 || i % 5 == 0
    i = "no"
  else
    nums << i
  end
end
p nums.inject(:+)

# 問題3(不正解)
