# #問題1
# h = gets.to_i
# w = gets.to_i
# n = gets.to_i

# if n % [h, w].max > 0
#   puts n / [h, w].max + 1
# else
#   puts n / [h, w].max
# end

# #問題2
# n = gets.to_i
# range = []
# for i in 1..n
#   rob = gets.split(" ").map(&:to_i)
#   r = [rob[0] - rob[1], rob[0] + rob[1]]
#   range << r
# end
# range.sort!
# ctn = n
# i = 0
# while i <= range.length-2
#   if range[i][1] > range[i+1][0]
#     ctn -= 1
#   end
#   i += 1
# end
# puts ctn