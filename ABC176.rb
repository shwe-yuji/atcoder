# 問題1
n, x, t = gets.split(" ").map(&:to_i)
ans = (n / x) * t 
if n % x > 0
  ans += t
end
puts ans

# 問題2
n = gets.to_i
if n % 9 == 0
  puts "Yes"
else
  puts "No"
end

# 問題3
n = gets.to_i
array = gets.split(" ").map(&:to_i)
ans = 0
(n-1).times do |i|
  if array[i] > array[i+1]
    diff = array[i] - array[i+1]
    array[i+1] += diff
    ans += diff
  end
end
puts ans
