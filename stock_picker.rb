def stock_picker(array)
	highest_return = []
	highest_sum = 0
	array.each do |x|
		first_num = x
		array[array.index(first_num)+1..-1].each do |y|
			current_sum = y - first_num
			if current_sum > highest_sum
				highest_sum = current_sum
				highest_return = array.index(x),array.index(y)
			end
		end
	end
	highest_sum != 0 ? highest_return : "No profit"
end
puts "#{stock_picker([4,2,3,1])}"