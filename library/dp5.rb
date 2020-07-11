# n個の正の整数 a[0]a[1],…,a[n−1] と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAにする方法をすべて考えた時
# 選ぶ整数の個数の最小値を求めよ。
# Aにすることができない場合は-1と出力せよ。

n = 3
array = [5, 7, 1]
A = 12

inf = 9999999999
dp = Array.new(A+1, inf) 
dp[0] = 0

# p dp

n.times do |i|
  dp_tmp = []
  (A+1).times do |j|
    p "#{i} #{j} #{array[i]} #{dp[j-array[i]]} #{dp[j]}"
    if j >= array[i]
    #   p "#{i} #{dp[j- array[i]]} #{dp[j]}"
      dp_next = [dp[j-array[i]]+1, dp[j]].min
    else
      dp_next = dp[j]
    end
    dp_tmp << dp_next
  end
  puts ""
  dp = dp_tmp
#   p dp
end

# p dp