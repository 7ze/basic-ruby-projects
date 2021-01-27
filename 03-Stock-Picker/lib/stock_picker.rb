# frozen_string_literal: true

def stock_picker(stocks)
  profit = {}
  stocks.each_with_index do |price1, i|
    stocks.each_with_index do |price2, j|
      profit[[i, j]] = price2 - price1 if j > i
    end
  end
  max_profit = profit.max_by(&:last)
  "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for a profit of $#{max_profit.last}"
end
