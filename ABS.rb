#問題1
# a = gets.to_i
# b, c = gets.split(" ").map(&:to_i)
# s = gets.chomp
# puts "#{a+b+c} #{s}"

#問題2
# a, b = gets.split(" ").map(&:to_i)
# if (a * b) % 2 == 0
#   puts "Even"
# else
#   puts "Odd"
# end

#問題3
# s = gets.chomp
# puts s.count("1")

#問題4
# n = gets.to_i
# array = gets.split(" ").map(&:to_i)
# ctn = 0
# odd = 0
# while true do
#   array.each do |a|
#     if a % 2 != 0
#       odd = 1
#     end
#   end
#   if odd > 0
#     break
#   end
#   array = array.map{|item| item /2}
#   ctn += 1
# end
# puts ctn

#問題5
# a = gets.to_i
# b = gets.to_i
# c = gets.to_i
# x = gets.to_i
# cnt = 0
# sum = 0
# 0.upto(a) do |coin_500|
#   0.upto(b) do |coin_100|
#     0.upto(c) do |coin_50|
#       sum = coin_500 * 500 + coin_100 * 100 + coin_50 * 50
#       if sum == x
#         cnt += 1
#       end
#     end
#   end
# end
# puts cnt

#問題6
# n, a, b = gets.split(" ").map(&:to_i)
# ans = 0
# for i in 1..n
#   num = i.to_s.split("").map(&:to_i).sum
#   if num >= a && num <= b
#     ans += i
#   end
# end
# puts ans

#問題7
# n = gets.to_i
# cards = gets.split(" ").map(&:to_i)
# cards = cards.sort.reverse
# alice = 0
# bob = 0
# i = 0
# while i <= cards.length-1
#   if i % 2 == 0
#     alice += cards[i]
#   else
#     bob += cards[i]
#   end
#   i += 1
# end
# puts alice - bob

#問題8
# n = gets.to_i
# mochimochi = []
# for i in 1..n
#   mochi = gets.to_i
#   mochimochi << mochi
# end
# puts mochimochi.uniq.length

#問題9
# n, y = gets.split(" ").map(&:to_i)
# cnt = 0
# 0.upto(n) do |yen_10000|
#   0.upto(n-yen_10000) do |yen_5000|
#     sum = (yen_10000 * 10000) + (yen_5000 * 5000) + ((n-yen_10000-yen_5000) * 1000)
#     if sum == y
#       puts "#{yen_10000} #{yen_5000} #{n-yen_10000-yen_5000}"
#       cnt += 1
#       exit
#     end
#   end
# end

# if cnt == 0
#   puts "#{-1} #{-1} #{-1}"
# end

#問題10
# s = gets.chomp
# words = ["dream", "dreamer", "erase", "eraser"]
# cnt = 0
# words.each do |a|
#   words.each do |b|
#     words.each do |c|
#       words.each do |d|
#         re = s.gsub(/#{a}/, "").gsub(/#{b}/, "").gsub(/#{c}/, "").gsub(/#{d}/, "")
#         if re == ""
#           puts "YES"
#           cnt += 1
#           exit
#         end
#       end
#     end
#   end
# end
# if cnt == 0
#   puts "NO"
# end