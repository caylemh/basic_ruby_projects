def stock_picker(stock_prices)
    best_price = 0
    best_days = [0, 0]

    # Iterate through the prices and days
    stock_prices.each_with_index do |buy_price, buy_day|
        stock_prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
            profit = sell_price - buy_price

            # Work out the best profit
            if profit > best_price
                best_price = profit
                best_days = [buy_day, sell_day + buy_day +1]
            end
        end
    end
    return best_days
end

result = stock_picker([17,3,6,9,15,8,6,1,10])

p result
