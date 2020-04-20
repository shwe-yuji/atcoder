#問題1
ans1 = gets.to_i
ans2 = gets.to_i
nums = [1, 2, 3]
nums.delete(ans1) 
nums.delete(ans2)
puts nums

#問題2
n = gets.to_i
s, t = gets.chomp.split(" ")
array = []
for i in 0..n-1
  array.push(s[i])
  array.push(t[i])
end
puts array.join

#問題3
a, b = gets.split(" ").map(&:to_i)
puts a.lcm(b)