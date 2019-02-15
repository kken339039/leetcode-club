# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0
  
  res = [*1..num_rows].each_with_object([]) do |i, aa|
    if i == 1
      aa << [1]
    else
      cur = []
      
      if i > 2 
        [*1..i-2].each do |e|
          puts aa[e] if e == 2
          cur << aa[i-2][e-1] + aa[i-2][e]
        end
      end
      
      cur.unshift(1)
      cur.push(1)
      aa << cur
    end
  end

  res 
end