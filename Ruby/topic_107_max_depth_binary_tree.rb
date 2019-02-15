# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
  @res = []
  level_order(root, 0)
  @res.reverse
end

def level_order(root, l)
  return if root.nil?
  @res[l] = [] if @res[l].nil?
  @res[l] << root.val
  
  level_order(root.left, l+1)
  level_order(root.right, l+1)
end