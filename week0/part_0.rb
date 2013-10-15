def sum(array)
	if array.length == 0
		0
	else
		sum = 0
		for i in array do
			sum += i
		end
		sum
	end
end

def max_2_sum(array)
	if array.length == 0
		0
	elsif array.length == 1
		array.first
	else
		sort = array.sort! {|x,y| y <=> x }
		#sort = array.sort!.reverse
		sort[0]+sort[1]
	end
end

def sum_to_n?(array, n)
	if array.length == 0 && n == 0
		true
	elsif array.length == 1
		false
	else
		array.combination(2).to_a.each { |x| if sum(x) == n; return true end}
		false
end
end
