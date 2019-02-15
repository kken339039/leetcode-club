# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    curr_idx = 0
    no_duplicate_idx = 0
    
    for curr_idx in 0...nums.size
      next if curr_idx > 0 && nums[curr_idx] == nums[curr_idx-1]
      nums[no_duplicate_idx] = nums[curr_idx]
      no_duplicate_idx += 1
    end
    
    no_duplicate_idx
end