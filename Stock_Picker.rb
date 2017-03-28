def stock_picker(days_list)
  # days_list = days_list.split(',').to_a
  days_list = days_list.split(",").map(&:to_i)
  buy_date = 0
  sell_date = 0
  last_element_index = days_list.length - 1

  for i in 0..last_element_index do
    for j in i..last_element_index do
      if ( (days_list[j] - days_list[i]) > (days_list[sell_date] - days_list[buy_date]) )
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
