#nとmの最大公約数を求める

def gcd(n, m)
  r = n % m
  if r  == 0
    return m
  else
    r = gcd(m, r)
  end
  return r
end
