#問題1
r = gets.to_f
puts (r * 2) * Math::PI

#問題2
n, m = gets.split(" ").map(&:to_i)
hw = gets.split(" ").map(&:to_i)
vacation = n - hw.inject(:+)
if vacation < 0
  puts -1
else
  puts vacation
end

#問題3(制限時間超過)
#原因　Array.countが多くの時間を使うため
n = gets.to_i
nums = gets.split.map(&:to_i)

# 要素数nで初期値が0の配列を準備
ans = Array.new(n, 0)
nums.each do |num|
  # ansの(num - 1)番目に1ずつ足していく
  ans[num - 1] += 1
end
ans.each do |a|
  puts a
end