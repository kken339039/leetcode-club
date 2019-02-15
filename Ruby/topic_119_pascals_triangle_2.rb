# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  cur = 1
  [1] + (1..row_index).map do |i|
    cur = cur * (row_index - i + 1) / i
  end
  
  # [p]+(1..row_index).map{|i|p=p*(row_index-i+1)/i}
end