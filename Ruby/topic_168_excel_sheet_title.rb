# @param {Integer} n
# @return {String}
def convert_to_title(n)
  return "" if n <= 0
  
  num = n + 64
  if num > 64 && num < 91
    return num.chr
  else
    r = n%26 > 0 ? (n%26) : (n%26)+26
    l = n%26 > 0 ? (n/26) : (n/26-1)

    return convert_to_title(l) + convert_to_title(r)
  end
end