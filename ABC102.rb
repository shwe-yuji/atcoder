# 問題1
n = gets.to_i
puts n if n % 2 == 0
puts 2.lcm(n) if n % 2 != 0

#問題2
n = gets.to_i
array = gets.split(" ").map(&:to_i)
combi = array.combination(2).to_a
ans = []
combi.each do |c|
  ans << (c[0] - c[1]).abs
end
puts ans.max

#問題3
n = gets.to_i
array = gets.split(" ").map(&:to_i)
b = []
for i in 0..array.length-1
#   puts "#{array[i] - (i+1)} - b"
  b << array[i] - (i+1)
end
b.sort!
if b.length % 2 != 0
  bb = b[b.length / 2]
else
  bb = (b[b.length / 2] + b[(b.length / 2) - 1]) / 2
end
sum = 0
for i in 0..array.length-1
  sum += (array[i] - (bb + (i + 1))).abs
end
puts sum