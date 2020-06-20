# bit全検索 2**n通りなどを全検索する場合に便利
# 日本の貨幣9種類から少なくともどれか１つを選ぶ方法を全て列挙

currency = [1, 5, 10, 50, 100, 500, 1000, 5000, 10000]
(2 ** currency.length).times do |i|
  bit = i 
  sum = 0
  array = []
  currency.each_with_index do |c, j|
    if bit[j] == 1
      array << c
      sum += c
    end
  end
  puts "#{i+1}通り目"
  p "#{array}の合計"
  puts "#{sum}円"
  puts ""
end
