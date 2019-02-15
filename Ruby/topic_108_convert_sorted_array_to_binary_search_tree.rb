# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.nil? || nums.length == 0
  return TreeNode.new(nums.first) if nums.length == 1
  mid_i = nums.length/2
  node = TreeNode.new(nums[mid_i])
  node.left = sorted_array_to_bst(nums[0...mid_i])
  node.right = sorted_array_to_bst(nums[(mid_i+1)..-1])
  
  node
end