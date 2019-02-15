# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  length = nums.length
  
  return 0 if nums.length == 0
  return nums[0] if nums.length == 1
  return nums.max if nums.length == 2
  
  max_s = []
  max_s << nums[0]
  max_s << [nums[0], nums[1]].max

  i = 2
  while i < length 
    cur_max = nums[i] + max_s[i-2]
    max_s[i] = [cur_max, max_s[i-1]].max
    i+=1
  end
  
  max_s.pop
end
