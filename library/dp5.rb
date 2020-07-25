# n個の正の整数 a[0]a[1],…,a[n−1] と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAにする方法をすべて考えた時
# 選ぶ整数の個数の最小値を求めよ。
# Aにすることができない場合は-1と出力せよ。

n = 4
array = [1, 1, 1, 1]
A = 4

inf = 9999999999
dp = Array.new(A+1, inf) 
dp[0] = 0

n.times do |i|
  dp_tmp = []
  (A+1).times do |j|
    # p "#{i} #{j} #{dp[j-array[i]]} #{dp[j]}"
    if j >= array[i]
      dp_next = [dp[j-array[i]]+1, dp[j]].min
    else
      dp_next = dp[j]
    end
    dp_tmp << dp_next
  end
  p "#{i} #{dp_tmp}"
  puts ""
  dp = dp_tmp
end

# p dp