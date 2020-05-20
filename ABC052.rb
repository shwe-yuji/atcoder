#問題1
a, b, c, d = gets.split(" ").map(&:to_i)
ab = a * b
cd = c * d
if ab > cd
  puts ab
elsif ab < cd
  puts cd
else
  puts ab
end

#問題2
n = gets.to_i
s = gets.chomp
x = 0
ans = []
for i in 0..n-1
  if s[i] == "I"
    x += 1
    ans << x
  else
    x -= 1
    ans << x
  end
end

if ans.max < 0
  puts 0
else
  puts ans.max
end

#問題3
require 'prime'
n = gets.to_i
kaijo = (1..n).to_a.inject(:*)
mod = (10 ** 9) + 7
if n == 1
  puts 1 % mod
  exit
end
factors = Prime.prime_division(kaijo)
array = []
factors.each do |f|
  array << (f[1] + 1)
end
puts array.inject(:*) % mod