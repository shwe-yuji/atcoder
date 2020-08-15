# n, m = gets.split.map(&:to_i)
# g = Array.new(n) { Array.new(n, false) }
# p g

# m.times do |i|
#   u, v = gets.split(" ").map(&:to_i)
#   u -= 1; v -= 1
#   g[u][v] = true; g[v][u] = true
# end

# seen = Array.new(n, false)
# n.times do |i|
#   next if seen[i]

#   queue = g[i].map.with_index.select{ |x, j| x }.map { |x, j| [i, j] }
#   # p g[i].map.with_index.select{ |x, j| x }#.map{ |x, j| [i, j] }
#   p queue
# end

# h, w = gets.split(" ").map(&:to_i)
# start = gets.split(" ").map(&:to_i)
# goal = gets.split(" ").map(&:to_i)
# start = [start[0]-1, start[1]-1] ; goal = [goal[0]-1, goal[1]-1]
# map = Array.new(h){gets.chomp.split("")}

# seen = Array.new(h){Array.new(w, false)}
# start << 0
# queue = [start]

# dx = [0, 1, 0, -1]
# dy = [1, 0, -1, 0]
# p start
# p goal

# while !queue.empty?
#   x, y, cnt = queue.shift
#   seen[x][y] = true
#   4.times do |dir|
#     mx = x + dx[dir]
#     my = y + dy[dir]
#     next if map[mx][my] != "."
#     next if seen[mx][my]
#     if map[mx][my] == "." #&& map[mx][my].nil?
#       cnt += 1
#       seen[mx][my] = true
#       queue << [mx, my, cnt]
#       p "#{mx} #{my} #{queue}"
#     end
#     puts "g" if [mx, my] == goal
#   end
# end

# n = gets.to_i
# array = Array.new(n){gets.split(" ").map(&:to_i)}

# dp = [array[0].max, array[0].index(array[0].max)]

# sum = dp[0]
# (n-1).times do |i|
#   if dp[1] == array[i+1].index(array[i+1].max)
#     max = array[i+1].sort[1]
#   else
#     max = array[i+1].max
#   end
#   dp_next = [max, array[i+1].index(max)]
#   dp = dp_next
#   sum += dp[0]
# end

# puts sum

# N = gets.to_i
# dp = Array.new(N + 1){[0,0,0]}
# (1 .. N).each do |n|
#   a,b,c = gets.split.map(&:to_i)
#   dp[n][0] = [dp[n - 1][1] + a, dp[n - 1][2] + a].max
#   dp[n][1] = [dp[n - 1][2] + b, dp[n - 1][0] + b].max
#   dp[n][2] = [dp[n - 1][0] + c, dp[n - 1][1] + c].max
# end
# p dp
# puts dp[N].max

# h, w = gets.split(" ").map(&:to_i)
# map = Array.new(h){gets.chomp.split("")}
# p map

# dx = [1, -1, 0, 0]
# dy = [0, 0, 1, -1]


# h.times do |i|
#   w.times do |j|
#     next if map[i][j] == "."
#     start = [i, j]
#     queue = [start]
#     status = true
#     seen = Array.new(h){Array.new(w, false)}
#     seen[i][j] = true
#     cnt = 0
#     while !queue.empty?
#       x, y = queue.shift
#       4.times do |dir|
#         mx = x + dx[dir]
#         my = y + dy[dir]
#         next if mx < 0 || my < 0 || mx >= h || my >= w
#         next if seen[mx][my]
#         if status && map[mx][my] == "."
#         #   p "a #{[i, j]} #{queue}"
#           status = false
#           seen[mx][my] = true
#           queue << [mx, my]
#         elsif !status && map[mx][my] == "#"
#         #   p "b #{[i, j]} #{queue}"
#           status = true
#           seen[mx][my] = true
#           queue << [mx, my]
#         elsif status && map[mx][my] == "#"
#         #   p "c #{[i, j]} #{queue}"
#           next
#         elsif !status && map[mx][my] == "."
#         #   p "d #{[i, j]} #{queue}"
#           next
#         end
#         # p "#{[i, j]} #{[mx, my]}"
#         cnt += 1
#       end
#       p "#{[i, j]} #{queue} #{cnt}"
#     end
#     # p "#{[i, j]} #{queue}"
#     # puts ""
#   end
# end



n = gets.to_i
a = Array.new(n,0)
p a

# a.map! do
#   s = gets.split(".")
#   res = s[0].to_i*1000000000
#   if s.size >1
#     res += s[1].to_i*(10**(10-s[1].size))
#   end
# end

# p a