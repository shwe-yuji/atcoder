#問題1
# n = gets.to_i
# puts ans = n >= 30 ? "Yes" : "No"


#問題2
# n, d = gets.split(" ").map(&:to_i)
# cnt = 0
# n.times do |i|
#   x, y = gets.split(" ").map(&:to_i)
#   ditance = Math.sqrt((x ** 2) + (y ** 2))
#   cnt += 1 if ditance <= d
# end
# puts cnt

#問題3
n = gets.to_i
array = []
1.upto(10) do |i|
  s = []
  i.times do |j|
    s << 7
  end
  array << s
end
