#問題1
n = gets.chomp
for i in 0..n.length-1
  if n[i] == n[i+1]
    puts "Bad"
    exit
  end
end
puts "Good"

#問題2
n, l = gets.split(" ").map(&:to_i)
taste = []
for i in 1..n
  t = l + i - 1
  taste << t
end
full_apple_pie = taste.inject(:+)
apple_pies = taste.combination(n-1).to_a
abses = []
apple_pies.each_with_index do |pie, i|
  abs = (full_apple_pie - pie.inject(:+)).abs
  abses << abs
end
index = abses.index(abses.min)
puts apple_pies[index].inject(:+)

#問題3
a, b, c, d = gets.split(" ").map(&:to_i)
ans = (b - (b / c) - (b / d) + (b / c.lcm(d))) - (a - (a / c) - (a / d) + (a / c.lcm(d)))
if a % c != 0 && a % d != 0
  ans += 1
end
puts ans