# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  new_head = head
  new_root = nil
  
  while(new_head) do 
    new_root, new_root.next = new_head, new_root,
    new_head = new_head.next
  end
  
  new_root
end