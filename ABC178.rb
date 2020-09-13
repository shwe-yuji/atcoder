# 問題1
n = gets.to_i
if n == 0
  puts 1
else
  puts 0
end

# 問題2
a, b, c, d = gets.split(" ").map(&:to_i)
array = [a*c, a*d, b*c, b*d]
puts array.max

# 問題3
n = gets.to_i
mod = 10 ** 9 + 7
puts ((10 ** n) - (9 ** n) - (9 ** n) + (8 ** n)) % mod