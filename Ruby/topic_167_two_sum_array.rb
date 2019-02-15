# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  cache = {}
  numbers.each_with_index do |n, i|
    idx = i + 1
    diff = target - n
    return [cache[diff], idx] if cache[diff]
    cache[n] = idx
  end
end
