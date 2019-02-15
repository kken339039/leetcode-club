# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    best = nums[0]
    curr = 0
    nums.each do |n|
        curr = [n, curr+n].max
        best = [best, curr].max
    end
    best
end