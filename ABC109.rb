#問題1
a, b = gets.split(" ").map(&:to_i)
if a % 2 == 0 || b % 2 == 0
  puts "No"
else
  puts "Yes"
end

#問題2
n = gets.to_i
words = Array.new(n){gets.chomp}
# p words
for i in 0..words.length-2
  if words[i][-1] != words[i+1][0]
    puts "No"
    exit
  end
end
for i in 0..words.length-1
  if words.count(words[i]) > 1
    puts "No"
    exit
  end
end
puts "Yes"

#問題3
n, x = gets.split(" ").map(&:to_i)
points = gets.split(" ").map(&:to_i)
if n == 1
    puts (x - points[0]).abs
    exit
end
d = []
for i in 0..n-1
  d << (x - points[i]).abs
end
puts d.inject{|a, b| a.gcd(b)}
