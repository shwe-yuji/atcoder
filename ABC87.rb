#問題1
x = gets.to_i
a = gets.to_i
b = gets.to_i
c = x - a
d = c / b
puts c - b * d

#問題2
a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
ctn = 0
0.upto(a) do |coin_500|
  0.upto(b) do |coin_100|
    0.upto(c) do |coin_50|
      sum = coin_500 * 500 + coin_100 * 100 + coin_50 * 50
      if sum == x
        ctn += 1
      end
    end
  end
end
puts ctn

#問題3
n = gets.to_i
line_1 = gets.split(" ").map(&:to_i)
line_2 = gets.split(" ").map(&:to_i)
array = [line_1, line_2]
sums = []
for i in 0..n-1
  sum = array[0][0..i].inject(:+) + array[1][i..line_2.length-1].inject(:+)
  sums << sum
end
puts sums.max