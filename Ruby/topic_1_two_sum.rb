# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  cache = {}

  nums.each_with_index do |n, idx|
    diff = target - n
    return [cache[diff], idx] if cache[diff]
    cache[n] = idx
  end
end