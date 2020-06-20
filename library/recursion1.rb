# nの階乗を再帰関数を使って実装
# 階乗の定義
# n! = n * (n-1) * (n-2).. 2 * 1
# 0! = 1
def factorial(n)
  if n == 0
    return 1
  else
    return factorial(n-1) * n
  end
end
