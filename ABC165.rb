#問題1
k = gets.to_i
a, b = gets.split(" ").map(&:to_i)
check = []
for i in a..b
  if i % k == 0
    puts "OK"
    check << "ok"
    exit
  end
end
if check == []
  puts "NG"
end

#問題2
n = gets.to_i
deposit = 100
i = 0
while true do
  interest = (deposit * 0.01 * 1).floor
  deposit += interest
  i += 1
  if deposit >= n
    puts i
    break
  end
end

#問題3
n, m, q = gets.split(" ").map(&:to_i)

#存在しうる配列をすべて列挙して、条件を満たすか検証する。
array = (1..m).to_a.repeated_combination(n).to_a
scores = Array.new(array.length, 0)

for i in 1..q
  a, b, c, d = gets.split(" ").map(&:to_i)
  array.each_with_index do |arr, i|
    scores[i] += d if arr[b-1] - arr[a-1]  == c
  end
end

p scores.max