#問題1
n = gets.to_i
n % 2 == 0 ? n = n / 2 : n = n / 2 + 1
puts n

#問題2
card = Array.new(3){gets.split(" ").map(&:to_i)}
n = gets.to_i
nums = Array.new(n){gets.to_i}
i = 0
while i <= 2
  j = 0
  while j <=  2
    if nums.include?(card[i][j])
      card[i][j] = "○"
    end
    j += 1
  end
  i += 1
end
if (card[0][0] == "○" && card[0][1] == "○" && card[0][2] == "○") || 
    (card[1][0] == "○" && card[1][1] == "○" && card[1][2] == "○") ||
    (card[2][0] == "○" && card[2][1] == "○" && card[2][2] == "○") ||

    (card[0][0] == "○" && card[1][0] == "○" && card[2][0] == "○") ||
    (card[0][1] == "○" && card[1][1] == "○" && card[2][1] == "○") ||
    (card[0][2] == "○" && card[1][2] == "○" && card[2][2] == "○") ||

    (card[0][0] == "○" && card[1][1] == "○" && card[2][2] == "○") ||
    (card[0][2] == "○" && card[1][1] == "○" && card[2][0] == "○")
  puts "Yes"
else
  puts "No"
end

#問題3
n, m = gets.split(" ").map(&:to_i)
ans = Array.new(n, nil)

m.times do 
  s, c = gets.split(" ").map(&:to_i)
  s -= 1
  if ans[s] && ans[s] != c
    puts -1
    exit
  end
  ans[s] = c
end

if n >= 2 && ans[0].nil?
    ans[0] = 1
end

if n >= 2 && ans[0] == 0
    puts '-1'
    exit
end

ans.each{|a| print a ? a : 0}
