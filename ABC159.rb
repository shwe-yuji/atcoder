#問題1
n, m = gets.split(" ").map(&:to_i)
puts (1..n).to_a.combination(2).to_a.length + (1..m).to_a.combination(2).to_a.length

#問題2
s = gets.chomp
check_all = []
for i in 0..s.length-1
  if s[i] != s[-1-i]
    check_all.push("NO")
  end
end
 
for i in 0..((s.length-1) / 2) - 1
  if s[i] != s[((s.length-1) / 2) - 1 - i]
    check_all.push("NO")
  end
end
 
for i in 0..((s.length-1) / 2) - 1
  if s[i + ((s.length-1) / 2) + 1] != s[-1-i]
    check_all.push("NO")
  end
end
 
if check_all.length > 0 || s.length % 2 == 0
  puts "No"
else
  puts "Yes"
end

#問題3
n = gets.to_f
a = (n / 3).round(6)
p a ** 3