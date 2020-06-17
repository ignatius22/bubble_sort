def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    (n - 1).times do |i|
	next unless array[i] > array[i + 1]

    array[i], array[i + 1] = array[i + 1], array[i]
    swapped = true
    end
    break unless swapped
  end
  array
end

def bubble_sort_by(arr)
  swapped = true
  n = arr.length
  (0...n).each do
    (0...n - 1).each do |b|
      next unless (yield arr[b], arr[b + 1]).positive?

      arr[b], arr[b + 1] = arr[b + 1], arr[b]
      swapped = false
    end
    break if swapped
  end
  arr
end

bubsort_by = bubble_sort_by(%w[hello hey hi here]) do |left, right|
  left.length - right.length
end

a = [1, 3, 4, 1, 1, 1, 1, 2, 2, 3, 5, 1, 6, 2, 3, 4, 5]
p bubsort_by
p bubble_sort(a)
