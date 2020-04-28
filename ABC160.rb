#問題1
s = gets.chomp
if s[2] == s[3] && s[4] == s[5]
  puts "Yes"
else
  puts "No"
end

#問題2
n = gets.to_i
ctn_500 = 0
while n >= 500
  n -= 500
  ctn_500 += 1
end
ctn_5 = 0
while n >= 5
  n -= 5
  ctn_5 += 1
end
puts ctn_500 * 1000 + ctn_5 * 5

#問題3
k, n = gets.split(" ").map(&:to_i)
houses = gets.split(" ").map(&:to_i)
period = []
for i in 0..houses.length-2
  period << (houses[i] - houses[i+1]).abs
end
period << (houses[0] - houses[-1] + k)
new_presiod = period.sort
new_presiod.delete_at(-1)
p new_presiod.inject(:+)