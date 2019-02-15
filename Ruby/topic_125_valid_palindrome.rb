# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z\d]/, "").downcase
  s.reverse == s
end