# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zeroes = nums.count(0)
  nums.delete_if { |n| n.zero? }
  zeroes.times { nums << 0 }
  nums
end