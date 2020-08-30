# 問題1
d, t, s = gets.split(" ").map(&:to_i)
if t * s >= d
  puts "Yes"
else
  puts "No"
end

# 問題2
s = gets.chomp
t = gets.chomp
array = []
(s.length - t.length + 1).times do |i|
  cnt = 0
  t.length.times do |j|
    if s[i..t.length - 1 + i][j] != t[j]
      cnt += 1
    end
  end
  array << cnt
end
puts array.min

# 問題3
# 累積和
n = gets.to_i
array = gets.split(" ").map(&:to_i)
array_sum = array.sum
sum = 0
previous = 0
mod = 10 ** 9 + 7
(array.length-1).times do |i|
  if i == 0
    previous = array[i]
  else
    previous += array[i]
  end
  sum += array[i] * (array_sum - previous)
end
puts sum % mod