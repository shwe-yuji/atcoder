#問題１
array = [
  1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 2, 1, 14,
  1, 5, 1, 5, 2, 2, 1, 15, 2, 2, 5, 4, 1, 4, 1, 51
]
n = gets.to_i
puts array[n-1]

#問題2
h, w = gets.split(" ").map(&:to_i)
if h == 1 || w == 1
  puts 1
elsif (h * w) % 2 == 0 
  puts h * w / 2
elsif
  puts ((h * w) - 1) / 2 + 1
end

#問題3
# Math.sqrtを使用する場合Math.sqrt(a)などが小数になり誤差が生じる
a, b, c = gets.split(" ").map(&:to_i)
d = c - a - b

if d > 0
  if (d * d) - (4 * a * b) > 0
    puts "Yes"
  else
    puts "No"
  end 
else
  puts "No"
end