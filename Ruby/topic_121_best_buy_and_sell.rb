# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy = prices[0]
  profit = 0

  for i in 1...prices.length do
    if profit < prices[i] - buy
        profit = prices[i] - buy
    end
    
    if buy > prices[i]
        buy = prices[i]
    end
  end

  profit
end