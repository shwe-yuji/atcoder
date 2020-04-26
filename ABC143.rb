# 問題1
a, b = gets.split(" ").map(&:to_i)
if a - (2 * b) < 0
  puts 0
else
  puts a - (2 * b)
end

#問題2
n = gets.to_i
array = gets.split(" ").map(&:to_i)
new_array = array.combination(2).to_a
sum = 0
new_array.each do |a|
  sum += a.inject(:*)
end
puts sum

#問題3
n = gets.to_i
slime = gets.chomp.split("")
ctn = 1
for i in 0..n-2
  if slime[i] != slime[i+1]
  ctn += 1
  end
end
puts ctn