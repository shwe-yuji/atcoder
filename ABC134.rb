#問題1
r = gets.to_i 
puts 3 * r * r

#問題2
n, d = gets.split(" ").map(&:to_i)
range = d * 2 + 1
if n % range == 0
  puts n / range
else
  puts n / range + 1
end

#問題3
n = gets.to_i
array = []
for i in 1..n
  array.push(gets.to_i)
end

first = array.sort[-1]
second = array.sort[-2]

array.each do |a|
  if a != first
    puts first
  else
    puts second
  end
end