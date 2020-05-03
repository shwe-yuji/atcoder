#問題A
# s, t = gets.chomp.split(" ")
# if s[1] == "F" && t[1] == "F"
#   puts (t[0].to_i - s[0].to_i).abs

# elsif s[0] == "B" && t[0] == "B"
#   puts (t[1].to_i - s[1].to_i).abs

# elsif s[1] == "F" || t[0] == "B"
#   puts (t[1].to_i + s[0].to_i - 1).abs

# elsif s[0] == "B" || t[1] == "F"
#     puts (t[0].to_i + s[1].to_i - 1).abs
# end

#問題B
# s = gets.chomp
# hash = {}
# for i in 0..s.length - 1
#   if hash[s[i]]
#     hash[s[i]] += 1
#   else
#     hash[s[i]] = 1
#   end
# end
# puts hash.sort_by{|k, v| v}[-1][0]

#問題C
# n = gets.to_i
# array = []
# for i in 1..n
#   line = gets.chomp.split("")
#   array << line
# end
# i = 0
# while i <= n - 2
#   j = 0
#   while j <= line.length-1
#     if (array[n-1-i][j] == "X" || array[n-1-i][j+1] == "X" || array[n-1-i][j-1] == "X") && array[n-2-i][j] == "#"
#       array[n-2-i][j] = "X"
#     end
#     j += 1
#   end
#   i += 1
# end
# array.each do |arr|
#   puts arr.join
# end

#問題D
s = gets.to_s.chomp
ctn = 0
3.times do |l|
  ('a'..'z').to_a.push('.').repeated_permutation(l+1) do |t|
    ctn += 1 if Regexp.new(t.join).match(s)
  end
end 
puts ctn