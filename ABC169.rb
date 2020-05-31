#問題1
a, b = gets.split(" ").map(&:to_i)
puts a * b

#問題2
n = gets.to_i
nums = gets.split(" ").map(&:to_i)
if nums.include?(0)
  puts 0
  exit
end
sum = 1
nums.each do |n|
  sum = sum * n
  if sum > 10 ** 18
    puts -1
    exit
  end
end
puts sum

#問題3
require 'bigdecimal'
nums = gets.chomp.split(" ")
a = nums[0].to_i
b = nums[1]
# puts (a * (b * 100) / 100).floor
puts (a * BigDecimal("#{b}")).floor
