#問題1
r = gets.to_i
if r < 1200
  puts "ABC"
elsif r >= 1200 && r < 2800
  puts "ARC"
else
  puts "AGC"
end

#問題2
s = gets.chomp
if s[0] != "A"
  puts "WA"
  exit
end
if s[2..s.length-1].count("C") != 1 || s[1] == "C" || s[-1] == "C" 
  puts "WA"
  exit
end
s.delete!("A")
s.delete!("C")
if s != s.downcase
  puts "WA"
  exit
end
puts "AC"

#問題3
d, g = gets.split(" ").map(&:to_i)
info = Array.new(d){gets.split(" ").map(&:to_i)}
cnts = []
for i in 1..2 ** d
  bit = i
  cnt = score = 0
  rest = []
  info.each_with_index do |inf, j|
    if bit[j] == 1
      cnt += inf[0]
      score += inf[1] + (j+1) * 100 * inf[0]
    else
      inf << j if inf.length == 2
      rest << inf
    end
  end
  rest.sort_by!{|item| item[-1]}
  rest_score = g - score
  k = l = 0
  while rest_score > 0
    rest_score -= (rest[-1-k][-1] + 1) * 100
    l += 1
    if l == rest[-1-k][0]
      rest_score -= rest[-1-k][1]
      k += 1 
      l = 0
    end
    cnt += 1
  end
  cnts << cnt
end
puts cnts.min
