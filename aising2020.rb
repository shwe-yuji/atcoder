# 問題1
l, r, d = gets.split(" ").map(&:to_i)
cnt = 0
for i in l..r
  cnt += 1 if i % d == 0
end
puts cnt

# 問題2
n = gets.to_i
array = gets.split(" ").map(&:to_i)
cnt = 0
array.each_with_index do |a, i|
#   p "#{i+1} #{a}"
  cnt += 1 if (i+1) % 2 == 1 && a % 2 == 1
end
puts cnt

# 問題3(不正解)
n = gets.to_i
ans = Array.new(10050, 0)
for i in 1..105
  for j in 1..105
    for k in 1..105
      num = (i * i) + (j * j) + (k * k) + (i * j) + (j * k) + (k * i)
      if num < 10050
        ans[num] += 1
      end
    end
  end
end
for i in 1..n
  puts ans[i]
end