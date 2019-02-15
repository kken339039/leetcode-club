# @param {String} s
# @return {Integer}
def title_to_number(s)
  ss = s.split("")
  res = 0
  
  ss.reverse.each_with_index do |st, idx|
    int = st.ord - 64
    base = if idx == 0 
      int
    else
      int * 26**idx
    end
    res += base
  end

  res
end
