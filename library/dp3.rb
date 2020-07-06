# n個の正の整数 a[0],a[1],…,a[n−1]と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAになるようにすることが可能か判定せよ。
# 可能ならばYESと出力し、不可能ならばNOと出力せよ。

# 例
n = 6
array = [3, 4, 1, 7, 8, 9]
A = 21

dp = Hash.new
dp[0] = 0

n.times do |i|
  dp_tmp = dp.clone
  dp.each do |k, v|
    sum = k + array[i]
    if !dp_tmp[sum]
      dp_tmp[sum] = 1
    else
      dp_tmp[sum] += 1
    end
  end
  dp = dp_tmp
end

if dp.keys.include?(A)
  puts "YES"
else
  puts "NO"
end