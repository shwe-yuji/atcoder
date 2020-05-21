#問題1
n = gets.to_i
ans = n < 1200 ? "ABC" : "ARC"
puts ans

#問題2
s = gets.chomp
str = 0
fin = 0
for i in 0..s.length-1
  if s[i] == "A"
    str = i
    break
  end
end
  
for i in 0..s.length-1
  if s[-1-i] == "Z"
    fin = s.length - i
    break
  end
end

# puts fin - str

#問題3
n = gets.to_i
r = n % 11
q = n / 11
if r >= 1 && r <= 6
  ans = (q + 1) * 2 - 1
elsif r >= 7 && r <= 11
  ans = (q + 1) * 2
elsif r == 0
  ans = q * 2
end

puts ans