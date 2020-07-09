# n個の正の整数 a[0],a[1],…,a[n−1]と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAになるようにする方法が何通りあるかを求めよ。
# ただし、答えがとても大きくなる可能性があるので、1,000,000,009 で割った余りで出力せよ。

# 例
n = 5
array = [7, 5, 3, 1, 8]
A = 12
mod = 1000000009

dp = Hash.new
dp[0] = 0

n.times do |i|
  dp_tmp = dp.clone
  dp.each do |k, v|
    sum = k + array[i]
    if !dp_tmp[sum]
      dp_tmp[sum] = 1
    elsif dp[sum]
      dp_tmp[sum] += 1
    end
  end
  dp = dp_tmp
end

if dp[A].nil?
  puts -1
else
  puts dp[A] % mod
end