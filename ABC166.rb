#問題1
# s = gets.chomp
# if s == "ABC"
#   puts "ARC"
# else
#   puts "ABC"
# end

#問題2
# n, k = gets.split(" ").map(&:to_i)
# hash = {}
# for i in 0..n-1
#   hash[i+1] = []
# end
# for i in 1..k
#   sweets_num = gets.to_i
#   holders = gets.split(" ").map(&:to_i)
#   holders.each do |h|
#     hash[h].push(sweets_num)
#   end
# end

# if hash.group_by{|k, v| v.length > 0}[false].nil?
#   puts 0
# else
#   puts hash.group_by{|k, v| v.length > 0}[false].length
# end

#問題3
n, m = gets.split(" ").map(&:to_i)
heights = gets.split(" ").map(&:to_i)
# hash = {}
# for i in 1..n
#   hash[i] = heights[i-1]
# end
path_hash = {}
for i in 1..m
  path = gets.split(" ").map(&:to_i)
  if path_hash[path[0]]
    path_hash[path[0]].push(path[1])
  else
    path_hash[path[0]] = []
    path_hash[path[0]].push(path[1])
  end
end

p path_hash.group_by