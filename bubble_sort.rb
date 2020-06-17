def bubble_sort(array)
	n = array.length

	loop do
		swapped = false
		(n-1).times do |i|
			if array[i] > array[i + 1]
			array[i],array[i + 1] = array[i + 1],array[i]
			swapped = true
		end
	end
	break if not swapped
end
array
end

a = [1,3,4,1,1,1,1,2,2,3,5,1,6,2,3,4,5]
p bubble_sort(a)