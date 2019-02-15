# @param {Integer} x
# @return {Integer}
def reverse(x)
#     arr = x.to_s.split("").reverse
#     max = arr.length - 1
#     res = nil
    
#     if arr[max] == "-" 
#         val = arr[0..max-1].join("").to_i
#         res = val - (2*val)
#     else
#         res = arr[0..max].join("").to_i
#     end
    
#     res < -2**31 || res > 2**31 -1 ? 0 : res
    nav = (x<0) ? -1 : 1
    res = nav * (x.abs.to_s.reverse.to_i)
    (res < -2**31 || res > 2**31 -1) ? 0 : res
end