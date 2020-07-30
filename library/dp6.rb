# atcoder Educational DP Contest
# Flof1

n = gets.to_i
array = gets.split(" ").map(&:to_i)
inf = 999999999
dp = Array.new(n, inf)
dp[0] = 0 ; dp[1] = (array[1] - array[0]).abs

2.upto(n-1) do |i|
  dp[i] = [dp[i-2] + (array[i] - array[i-2]).abs, dp[i-1] + (array[i] - array[i-1]).abs].min
end

puts dp[-1]
