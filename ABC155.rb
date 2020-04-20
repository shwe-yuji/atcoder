#問題1
a, b, c = gets.split(" ")
if a == b && b == c && c == a  
  puts "No"
elsif a == b || b == c || c == a
  puts "Yes"
else
  puts "No"
end
#問題2
n = gets.to_i
nums = gets.split(" ").map(&:to_i)
even_num = nums.select{|item| item % 2 == 0}
check = []
even_num.each do |n|
  if n % 3 != 0 && n % 5 != 0
    check.push("NO")
  end
end
if check.empty?
  puts "APPROVED"
else
  puts "DENIED"
end
#問題3
n = gets.to_i
hash = {}
for i in 1..n
  s = gets.chomp
  #標準入力でsと同じkeyがあれば、valueにプラス1する
  if hash[s]
    hash[s] += 1
  else
    hash[s] = 1
  end
end
puts hash.group_by{|k, v| v}.max[1].to_h.keys.sort

