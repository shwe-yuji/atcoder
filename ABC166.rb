#問題1
s = gets.chomp
if s == "ABC"
  puts "ARC"
else
  puts "ABC"
end

#問題2
n, k = gets.split(" ").map(&:to_i)
hash = {}
for i in 0..n-1
  hash[i+1] = []
end
for i in 1..k
  sweets_num = gets.to_i
  holders = gets.split(" ").map(&:to_i)
  holders.each do |h|
    hash[h].push(sweets_num)
  end
end

if hash.group_by{|k, v| v.length > 0}[false].nil?
  puts 0
else
  puts hash.group_by{|k, v| v.length > 0}[false].length
end

#問題3
n, m = gets.to_s.split.map{|t|t.to_i}
h    = [0] + gets.to_s.split.map{|t|t.to_i}

ans = [1] * (n+1)
ans[0] = 0

m.times do
  a, b = gets.split(" ").map(&:to_i)
  if h[a] < h[b]
    ans[a] = 0
  elsif h[a] > h[b]
    ans[b] = 0
  else
    ans[a] = ans[b] = 0
  end
  p ans
end
puts ans.sum
