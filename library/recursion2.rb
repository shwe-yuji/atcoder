# n から m までの総和を求めるプログラムを再帰を使って実装
# n < m
# 0 <= n, m
def sum(n, m)
  if n > m
    return 0
  else
    return sum(n+1, m) + n
  end
end
