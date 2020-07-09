# n個の正の整数 a[0],a[1],…,a[n−1]と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAになるようにする方法が何通りあるかを求めよ。
# ただし、答えがとても大きくなる可能性があるので、1,000,000,009 で割った余りで出力せよ。

# 例
n = 5
array = [7, 5, 3, 1, 8]
A = 12
mod = 1000000009

dp = [0]
cnt = 0
n.times do |i|
  dp_tmp = dp.clone
  dp.each do |d|
    sum = d + array[i]
    if sum == A
      cnt += 1
      cnt = cnt % mod
    end
    dp_tmp << sum
  end
  dp = dp_tmp
end
puts cnt