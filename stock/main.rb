require 'pry-byebug'

def stock_picker(stocks)
        diff = 0
        profit = 0
        result = 0

        stocks.each_with_index do |stock, index|
                while index < stocks.length - 1
                        index += 1
                        diff = stocks[index] - stock
                        next unless diff > profit

                        buy_price = stock
                        buy_day = stocks.index(stock)
                        sell_price = stocks[index]
                        sell_day = index
                        profit = diff
                        result =
                        "Buy at $#{buy_price} on day #{buy_day}, " +
                        "sell at $#{sell_price} on day #{sell_day} " +
                        "for $#{profit} profit."
                end
        end
        p result
end

stock_picker([1000, 3, 6, 90, 15, 8, 6, 17, 1])
