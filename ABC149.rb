#問題1
s, t = gets.chomp.split(" ")
puts t + s

#問題2
takahashi, aoki, n = gets.split(" ").map(&:to_i)
if n >= takahashi
  if aoki - (n - takahashi) < 0
    puts "0 0"
  else
    puts "0 #{aoki - (n-takahashi)}"
  end
else
  puts "#{takahashi - n} #{aoki}"
end

#問題3
#prime(素数)のモジュールを利用
require 'prime'
n = gets.to_i
i = n
prime_num = []
for i in n..10 ** 6
  if i.prime?
    prime_num.push(i)
    break
  end
end
puts prime_num