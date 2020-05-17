#問題1
n = gets.to_s.chomp
if n[-1] == "3"
  puts "bon"
elsif n[-1] == "0" || n[-1] == "1" || n[-1] == "6" || n[-1] == "8"
  puts "pon"
else
  puts "hon"
end

#問題2
k = gets.to_i
s = gets.chomp
if s.length <= k
  puts s
else
  puts s[0..k-1] + "..."
end

#問題3
a, b, h, m = gets.split(" ").map(&:to_i)

hr = h * 30.0 + m * 0.5
mr = m * 6.0
r = hr > mr ? hr - mr : mr - hr
r = 360 - r if r > 180

ans = (a ** 2) + (b ** 2) - (2 * a * b * Math.cos(r * Math::PI / 180.0))
puts Math.sqrt(ans)
