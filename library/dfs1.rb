# 例 m個のリンゴをn人で分ける方法は何通りあるか
# 再帰を使用して実装

# dfs(4, 3)の場合、ある1人がリンゴを
#  「0個もらう場合」
#  「1個もらう場合」
#  「2個もらう場合」
#  「3個もらう場合」
#  「4個もらう場合」
# に分けるとそれぞれ
#  「4個のリンゴを2人で分ける」
#  「3個のリンゴを2人で分ける」
#  「2個のリンゴを2人で分ける」
#  「1個のリンゴを2人で分ける」
#  「0個のリンゴを2人で分ける」
# となる。
# すなわち dfs(4, 3) = dfs(4, 2) + dfs(3, 2) + dfs(2, 2) + dfs(1, 2) + dfs(0, 2)となる.

def dfs(m, n)
  return 1 if n == 1 #1人がで分ける場合は1通りしかない
  cnt = i = 0
  while i <= m
    cnt += dfs(m-i, n-1) #再帰
    i += 1
  end
  return cnt
end
