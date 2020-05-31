# #復習用
# map = Array.new(10){gets.chomp.split("")}
# cnt = map.flatten.count("o") + 1

# dx = [1, -1, 0, 0]
# dy = [0, 0, 1, -1]

# 10.times do |i|
#   10.times do |j|
#     visit = Array.new(10){Array.new(10, false)}
#     visit[i][j] = true
#     queue = [[i, j]]
#     while !queue.empty?
#       x, y = queue.shift
#       4.times do |dir|
#         mx = x + dx[dir]
#         my = y + dy[dir]
#         next if mx < 0 || my < 0 || mx >= 10 || my >= 10
#         if !visit[mx][my] && map[mx][my] == "o"
#           visit[mx][my] = true
#           queue.push([mx, my])
#         end
#       end
#     end
#     if visit.flatten.count(true) == cnt
#       puts "YES"
#       exit
#     end
#   end
# end

# puts "NO"