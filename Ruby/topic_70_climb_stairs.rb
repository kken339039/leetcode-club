# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n <= 1

  cur, prev = 1,1
  # 費氏數列 f(n) = f(n-1) (cur) + f(n-2) (prev)
  (n-1).times do
    tmp = cur
    cur = cur + prev
    prev = tmp
  end
  
  cur
end
