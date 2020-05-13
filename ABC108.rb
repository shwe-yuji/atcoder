#問題1
n = gets.to_i
odd = 0
even = 0
for i in 1..n
  if i.odd?
    odd += 1
  else
    even += 1
  end
end
puts odd * even

#問題2
x_1, y_1, x_2, y_2 = gets.split(" ").map(&:to_i)
x_mount = x_2 - x_1
y_mount = y_2 - y_1
if x_mount > 0 && y_mount > 0 
  x_3, y_3 = x_2 - y_mount.abs, y_2 + x_mount.abs
  x_4, y_4 = x_1 - y_mount.abs, y_1 + x_mount.abs
elsif x_mount < 0 && y_mount < 0
  x_3, y_3 = x_2 + y_mount.abs, y_2 - x_mount.abs
  x_4, y_4 = x_1 + y_mount.abs, y_1 - x_mount.abs
elsif x_mount < 0 && y_mount > 0
  x_3, y_3 = x_2 - y_mount.abs, y_2 - x_mount.abs
  x_4, y_4 = x_1 - y_mount.abs, y_1 - x_mount.abs
elsif  x_mount > 0 && y_mount < 0
  x_3, y_3 = x_2 + y_mount.abs, y_2 + x_mount.abs
  x_4, y_4 = x_1 + y_mount.abs, y_1 + x_mount.abs
elsif y_mount == 0 && x_1 < x_2
  x_3, y_3 = x_2, y_2 + x_mount.abs
  x_4, y_4 = x_1, y_1 + x_mount.ab
elsif y_mount == 0 && x_1 > x_2
  x_3, y_3 = x_2, y_2 - x_mount.abs
  x_4, y_4 = x_1, y_1 - x_mount.ab
elsif x_mount == 0 && y_1 < y_2
  x_3, y_3 = x_2 - y_mount.abs, y_2
  x_4, y_4 = x_1 - y_mount.abs, y_1
elsif x_mount == 0 && y_1 > y_2
  x_3, y_3 = x_2 + y_mount.abs, y_2
  x_4, y_4 = x_1 + y_mount.abs, y_1
end
 
puts "#{x_3} #{y_3} #{x_4} #{y_4}"

#問題3(TLE)
n, k = gets.split(" ").map(&:to_i)

array = []
array_half = []
if k % 2 != 0
  for i in 1..n
    if i % k == 0
      array << i
    end
  end
  puts array.repeated_permutation(3).to_a.length
else
  for i in 1..n
    if i % k == 0
      array << i
    elsif i % (k / 2) == 0
      array_half << i
    end
  end
  puts array.repeated_permutation(3).to_a.length + array_half.repeated_permutation(3).to_a.length
end