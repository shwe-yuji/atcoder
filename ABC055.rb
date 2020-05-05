#問題1
n = gets.to_i
x = 0
y = 0
for i in 1..n
  x +=  800
  if i % 15 == 0
    y += 200
  end
end
puts x - y

#問題2
n = gets.to_i
power = 1
mod = 10 ** 9 + 7
for i in 1..n
  #途中計算ごとに % をとってよい！！
  power = power * i % mod
end
puts power

#問題3
n, m = gets.split(" ").map(&:to_i)
s_2 = n * 2
if m < 2
  cnt = 0
elsif n >= m
  cnt = m / 2
else
  cnt = n
end
m -= s_2
if m < 0
  cnt += 0
else
  cnt += m / 4
end
p cnt