# 問題1
s = gets.chomp
puts 0 if s == "SSS"
puts 1 if s == "RSS" || s == "SRS" || s == "SSR" || s == "RSR"
puts 2 if s == "RRS" || s == "SRR"
puts 3 if s == "RRR"

# 問題2
n = gets.to_i
array = gets.split(" ").map(&:to_i)
combi = array.combination(3).to_a
cnt = 0
combi.each do |c|
  cnt += 1 if c[0] + c[1] > c[2] && c[1] + c[2] > c[0] && c[2] + c[0] > c[1] && c[0] != c[1] && c[1] != c[2] && c[2] != c[0]
end
puts cnt

# 問題3
x, k, d = gets.split(" ").map(&:to_i)
if x.abs >= k * d
  puts x.abs - (k * d)
  exit
end
before_0 = x / d 
if (k - before_0) % 2 == 0
  puts (x - (before_0 * d)).abs
else (k - before_0) % 2 != 0
  puts  (x - (before_0 * d) - d).abs
end