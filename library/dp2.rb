# n個の品物があり、i番目の品物のそれぞれ重さと価値が 
# weight[i],value[i]となっている (i=0,1,...,n−1)
# これらの品物から重さの総和がWを超えないように選んだときの、価値の総和の最大値を求めよ。

# 例
n = 6
weight_value =[[2, 3], [1, 2], [3, 6], [2, 1], [1, 3], [5, 85]]
w = 9

dp = []
dp[0] = [0, 0]

n.times do |i|
  dp_tmp = dp.clone
  dp.each do |d|
    totel_weight = d[0] + weight_value[i][0]
    totel_value = d[1] + weight_value[i][1]
    if totel_weight <= w
      dp_tmp << [totel_weight, totel_value]
    end
  end
  dp = dp_tmp
end

puts dp.sort_by{|item| item[1]}[-1][1]