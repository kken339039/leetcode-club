# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
  return 0 if root.nil?
  return 1 if root.left.nil? && root.right.nil? 

  l = root.left.nil? ? 1 : min_depth(root.left)
  r = root.right.nil? ? 1 : min_depth(root.right)
  [l, r].min + 1
end
