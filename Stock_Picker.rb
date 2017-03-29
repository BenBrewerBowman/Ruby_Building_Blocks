def stock_picker(days_list)
  # split string of days and convert to int
  days_list = days_list.split(",").map(&:to_i)
  # initialize sell and buy to 0
  buy_date = 0
  sell_date = 0
  # last index
  last_element_index = days_list.length - 1
  # iterate through, finding the max profit
  for i in 0..last_element_index do
    for j in i..last_element_index do
      # if greater profit found
      if ( (days_list[j] - days_list[i]) > (days_list[sell_date] - days_list[buy_date]) )
        # save new buy and sell dates
        buy_date = i
        sell_date = j
      end
    end
  end
  "Buy on day #{buy_date}. Sell on day #{sell_date}. Profit: #{sell_date - buy_date} dollars per share"
end

print "Enter an the price each day, separated by commas: "
days_list = gets.chomp
puts stock_picker(days_list)
