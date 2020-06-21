# 問題1
s = gets.chomp
if s == s.upcase
  puts "A"
else
  puts "a"
end

# 問題2
n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array.sort!
sum = 0
k.times do |i|
  sum += array[i]
end
puts sum

# 問題3
n = gets.to_i
alpahbet = ("a".."z").to_a
string = []
while n > 0
  r = n % 26
  n = r == 0 ? (n / 26 - 1) : n / 26
  string << alpahbet[r-1]
end
puts string.reverse.join