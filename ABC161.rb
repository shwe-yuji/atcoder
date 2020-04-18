# 問題1
nums = gets.split(" ").map(&:to_i)
nums[0], nums[1] = nums[1], nums[0]
nums[0], nums[2] = nums[2], nums[0]
puts "#{nums[0]} #{nums[1]} #{nums[2]}"

# 問題2
n, m = gets.split(" ").map(&:to_i)
vote = gets.split(" ").map(&:to_i)
rate = 1 / (4 * m).to_f
vote_all = vote.inject(:+)
border = rate * vote_all
judge = []
vote.each do |num|
  if num >= border
    judge << "Yes"
  end
end
if judge.count("Yes") >= m
  puts "Yes"
else
  puts "No"
end

# 問題3(不正解)
N, K = gets.chomp.split(" ").map(&:to_i)
first = N % K
second = (first - K).abs
puts [first, second].min