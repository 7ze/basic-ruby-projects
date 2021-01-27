# frozen_string_literal: true

def stock_picker(stock_prices)
  profit = {}
  stock_prices.each_with_index do |buying_price, buying_date|
    stock_prices.each_with_index do |selling_price, selling_date|
      profit[[buying_date, selling_date]] = selling_price - buying_price if selling_date > buying_date
    end
  end
  max_profit = profit.max_by(&:last)
  "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for a profit of $#{max_profit.last}"
end
