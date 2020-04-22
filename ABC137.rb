#問題1
line = gets.split(" ").map(&:to_i)
A = line[0]
B = line[1]
a = A + B
b = A - B
c = A * B
nums = [a, b, c]
puts nums.max

#問題2
line = gets.split(" ").map(&:to_i)
K = line[0]
X = line[1]
nums = []
i = 0
while i <= K-1
  a = X + i
  i += 1
  nums.push(a)
end
j = 0
while j <= K-2 
  b = X - j - 1
  j += 1
  nums.push(b)
end
nums.sort.each do |n|
  print "#{n} "
end

#問題3
n = gets.to_i
hash = {}
for i in 1..n
  s = gets.chomp.split("").sort.join
  if hash[s]
    hash[s] += 1
  else
    hash[s] = 1
  end
end
ctn = 0
hash.values.each do |v|
  ctn += v * (v - 1) / (1 * 2)
end
puts ctn