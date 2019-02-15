# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return nil unless head.next
  count = 0
  h, p = head, head
  while h
    p = p.next if count > n
    h = h.next
    count += 1
  end
  
  return head.next if count == n
  p.next = p.next.next
  head
end