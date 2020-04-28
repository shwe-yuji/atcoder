#問題1
s = gets.chomp
if s == "AAA" || s == "BBB"
  puts "No"
else
  puts "Yes"
end

#問題2
n, a, b = gets.split(" ").map(&:to_i)
r = n % (a + b)
if r > a
  puts a + (n / (a + b)) * a
else
  puts r + (n / (a + b)) * a
end

#問題3
num1, num2 = gets.split(" ").map(&:to_i)
check = []
for i in 1..1009
  a = (i * 0.08).floor
  b = (i * 0.10).floor
  if num1 == a && num2 == b
    puts i
    check << -1
    break
  end
end
 
if check == []
  puts -1
end