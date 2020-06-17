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

def bubble_sort_by(array)
	i=0
	n=array.length
	while i<n-1
		for j in i..n
			if yield(array[j],array[j+1]).positive?
				array[j],array[j+1]=array[j+1],array[j]
			else
				j+=1
			end
		end
		i+=1
	end
array
end

a = [1,3,4,1,1,1,1,2,2,3,5,1,6,2,3,4,5]
p bubble_sort_by(a)