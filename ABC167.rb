#問題1
s = gets.chomp
t = gets.chomp

if t[0..t.length-2] == s
  puts "Yes"
else
  puts "No"
end

#問題2
a, b, c, k = gets.split(" ").map(&:to_i)
sum = 0
if k < a
  sum = k
  puts sum
  exit
else
  sum = a
  k = k - a
end
if k < b
  puts sum
  exit
else
  k = k - b
end
if k < c
  sum = sum + (k * -1)
  puts sum
else
  sum = sum + (c * -1)
  puts sum
end

#問題3(不正解)
# 写経
# 2のn乗通りの全検索、ビット数(1か0かで判別するスイッチのようなもの)
# この問題では買うか、買わないかの2択で判断

n, m, x = gets.split(" ").map(&:to_i)
cas = Array.new(n){ gets.to_s.split.map{|e|e.to_i} }
inf = 10 ** 7
ans = inf
(2**n).times do |bit|
  cnt = 0
  rikaido = Array.new(m+1){ 0 }
  rikaido[0] = x
  cas.each_with_index do |ca, i|
    if bit[i] == 1
      cnt += ca[0]
      (1..m).each{ |j| rikaido[j] += ca[j] }
    end
  end
  ans = [ans, cnt].min if rikaido.all?{ |r| r >= x } 
end
puts ans == inf ? -1 : ans