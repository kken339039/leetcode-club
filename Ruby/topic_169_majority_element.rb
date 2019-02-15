# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  cache = {}
  nums.each do |n|
    cache[n] = 0 if cache[n].nil?
    cache[n] += 1 if cache[n]
  end
  
  cache.key(cache.values.max)
end