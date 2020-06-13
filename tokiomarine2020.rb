#問題１
s = gets.chomp
puts s[0..2]

#問題2
a, v = gets.split(" ").map(&:to_i)
b, w = gets.split(" ").map(&:to_i)
t = gets.to_i
if v <= w
  puts "NO"
  exit
end
initial_ditance = (a - b).abs
speed_diff = v - w
if initial_ditance > speed_diff * t
  puts "NO"
else
  puts "YES" 
end