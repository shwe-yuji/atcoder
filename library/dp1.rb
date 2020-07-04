# n個の整数 a[0],a[1],…a[n−1] が与えられる。
# これらの整数から何個かの整数を選んで総和をとったときの、総和の最大値を求めよ。
# また、何も選ばない場合の総和は 0 であるものとする。

# 例
n = 5
array = [2, 25, 12, -43, 64]
# とする

dp = Array.new(1, 0)
n.times do |i|
  dp_tmp = dp.clone

  dp.each do |a|
    sum = a + array[i]
    dp_tmp << sum
  end
  dp = dp_tmp
end

puts dp.max
