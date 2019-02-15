def roman_to_int(s)
    roman_nums = {
            I: 1,
            V: 5,
            X: 10,
            L: 50,
            C: 100,
            D: 500,
            M: 1000
        }
    less_nums = {
            I: {i: ["V","X"], val: -1},
            X: {i: ["L","C"], val: -10},
            C: {i: ["M","D"], val: -100}
        }
    
    
    arr = s.split("")
    res = 0
    
    arr.each_with_index do |e, idx|
        if arr[idx+1]
            if e == "I" && "VX".include?(arr[idx+1])
                res -= 1 
                next
            elsif e == "X" && "LC".include?(arr[idx+1]) 
                res -= 10 
                next
            elsif e == "C" && "MD".include?(arr[idx+1]) 
                res -= 100
                next
            end
        end
        res += roman_nums[e.to_sym]
    end
    res
end

def roman_to_int(s)
  res = 0
  
  # sum all the symbols
  s.chars.each do |char|
    res +=    1 if char == "I"
    res +=    5 if char == "V"
    res +=   10 if char == "X"
    res +=   50 if char == "L"
    res +=  100 if char == "C"
    res +=  500 if char == "D"
    res += 1000 if char == "M"
  end
  
  # subtract special combinations
  for i in 0..(s.size - 1)
    res -=   2 if s[i..i+1] == "IV" || s[i..i+1] == "IX"
    res -=  20 if s[i..i+1] == "XL" || s[i..i+1] == "XC"
    res -= 200 if s[i..i+1] == "CD" || s[i..i+1] == "CM"
  end
  
  return res
end
