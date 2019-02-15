# @param {String} s
# @return {Boolean}
def is_valid(s)
    brackets = {')' => '(', ']' => '[', '}' => '{'}
    tmp = []
    (0...s.length).each do |i|
        if brackets[s[i]]
            return false if tmp.pop != brackets[s[i]]
        else
            tmp << s[i]
        end
    end
    tmp.empty?
end