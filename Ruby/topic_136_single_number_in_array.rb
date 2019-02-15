# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  res = {}
  nums.each {|i| res[i] = !res[i] ? 1 : 2}
  
  res.select{|key, val| val == 1}.keys[0]
end