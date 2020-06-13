#問題1
s, w = gets.split(" ").map(&:to_i)
if s > w
  puts "safe"
else
  puts "unsafe"
end

#問題2
a, b, c, d= gets.split(" ").map(&:to_i)
takahashi_hp = a
takahashi_attack = b
aoki_hp = c
aoki_attack = d
i = 0
while takahashi_hp > 0 || aoki_hp > 0
  aoki_hp -= takahashi_attack
  i += 1
  break if aoki_hp <= 0
  takahashi_hp -= aoki_attack
  i += 1
  break if takahashi_hp <= 0
end
if i % 2 == 0
  puts "No"
else
  puts "Yes"
end

#問題3
n = gets.to_i
array = []
for i in 1..n
  array << gets.chomp
end
puts array.uniq.length
