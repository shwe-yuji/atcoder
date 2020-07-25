# 問題1
n = gets.to_i
puts 8 if n >= 400 && n <= 599
puts 7 if n >= 600 && n <= 799
puts 6 if n >= 800 && n <= 999
puts 5 if n >= 1000 && n <= 1199
puts 4 if n >= 1200 && n <= 1399
puts 3 if n >= 1400 && n <= 1599
puts 2 if n >= 1600 && n <= 1799
puts 1 if n >= 1800 && n <= 1999

# 問題2
a, b, c = gets.split(" ").map(&:to_i)
k = gets.to_i
if c > b && b > a
    puts "Yes"
    exit
end
array = [a, b, c]
i = 0
while i < k  
  if c <= a
    c = c * 2
    array = [a, b, c]
  elsif c <= b
    c = c * 2
    array = [a, b, c]
  elsif c > b && b <= a
    b = b * 2
    array = [a, b, c]
  end
  if c > b && b > a
    puts "Yes"
    exit
  end
  i += 1
end
puts "No"

# 問題3
n, k = gets.split(" ").map(&:to_i)
scores = gets.split(" ").map(&:to_i)

(n-k).times do |i|
  previous_score = scores[i]
  current_score = scores[i+k]
  if previous_score >= current_score
    puts "No"
  else
    puts "Yes"
  end
end