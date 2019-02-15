# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  cache = {}
  
  while !cache[n] && n != 1
    cache[n] = n
    
    n.to_s.split("").each_with_index do |e, i|
      val = e.to_i
      n = 0 if i == 0
      n += val**2
    end
  end
  
  return n == 1
end