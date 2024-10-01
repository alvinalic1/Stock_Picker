prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  total = 0
  result = []
  
  stock_prices.each_with_index do |buy_price, buy_index|
    stock_prices.drop(buy_index+1).each do |sell_price|
      if(buy_price > sell_price)
        next
      end
      if sell_price - buy_price > total
        total = sell_price - buy_price
        result[0] = buy_index
        result[1] = stock_prices.find_index(sell_price)
      end

    end

  end
  result
end

puts stock_picker(prices)