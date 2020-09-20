# 問題1
s = gets.chomp
if s[-1] == "s"
  puts s + "es"
else
  puts s + "s"
end

# 問題2
n = gets.to_i
judge = 0
n.times do |i|
  dice = gets.split(" ").map(&:to_i)
  if dice[0] == dice[1]
    judge += 1
  else
    judge = 0
  end
  if judge == 3
    puts "Yes"
    exit
  end
end
puts "No"

# 問題3
n = gets.to_i
ans = 0
1.upto(n - 1) do |a|
#   p "#{a} #{(n - 1) / a}"
  ans += (n - 1) / a
end
puts ans