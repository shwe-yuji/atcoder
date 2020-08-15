n = gets.to_i

dp = Array.new(3, [])
p dp

n.times do |i|
  a, b, c = gets.split(" ").map(&:to_i)
  if i == 0
    dp[0] = a
    dp[1] = b
    dp[2] = c
  elsif
    dp[0][i] == dp[0][i-1] + [].max
  end
end

p dp