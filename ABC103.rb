#問題1
tasks = gets.split(" ").map(&:to_i)
tasks.sort!
puts (tasks[1] - tasks[0]) + (tasks[2] - tasks[1])

#問題2
#文字の回転問題、バブルソート利用
s = gets.chomp.split("")
t = gets.chomp
for i in 0..s.length-1
  for j in 0..s.length-2
    s[j], s[j+1] = s[j+1], s[j]
  end
  if s.join == t
    puts "Yes"
    exit
  end
end
puts "No"

#問題3
n = gets.to_i
array = gets.split(" ").map(&:to_i)
puts array.inject(:+) - n