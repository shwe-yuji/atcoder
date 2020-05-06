#問題1
array = gets.split(" ")
hash = {}
array.each do |a|
  if hash[a]
    hash[a] += 1
  else
    hash[a] = 1
  end
end
puts hash.select{|k, v| v == 1}.keys

#問題2
h, w = gets.split(" ").map(&:to_i)
map = []
for i in 1..h
  line = gets.chomp.split("")
  map << line
end
map.each_with_index do |a, i|
  a.each_with_index do |b, j|
    # p map[i][j]
    if map[i][j] == "."
      map[i][j] = 0
      if i != 0
        if j != 0
          if map[i-1][j-1] == "#"
            map[i][j] += 1
          end
        end
        if map[i-1][j] == "#"
          map[i][j] += 1
        end
        if map[i-1][j+1] == "#"
          map[i][j] += 1
        end
      end
      if j != 0
        if map[i][j-1] == "#"
          map[i][j] += 1
        end
      end
      if map[i][j+1] == "#"
        map[i][j] += 1
      end
      if i != h-1
        if j != 0
          if map[i+1][j-1] == "#"
            map[i][j] += 1
          end
        end
        if map[i+1][j] == "#"
          map[i][j] += 1
        end
        if map[i+1][j+1] == "#"
          map[i][j] += 1
        end
      end
    end
  end
end
map.each do |m|
  puts m.join
end

#問題3
#グラフ、DFSに関する良問
# n, m = gets.split(" ").map(&:to_i)

# for i in 1..m

# end
