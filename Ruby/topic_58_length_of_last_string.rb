# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    arr = s.split(" ")
    return 0 if arr.empty?
    
    last = arr.length-1
    arr[last].length
end