# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    cur_a = []
    rev_a = []
  
    while head do 
      val = head.val
      cur_a << val
      rev_a << val
      
      head = head.next
    end

    cur_a == rev_a.reverse
end