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