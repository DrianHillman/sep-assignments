def quick_sort(array, left, right)
  if left < right
    pivot_index = (left + ((right - left) / 2)).to_i
    new_pivot_index = partition_array(array, left, right, pivot_index)
    quick_sort(array, left, new_pivot_index - 1)
    quick_sort(array, new_pivot_index + 1, right)
  end

  return array
end

def partition_array(array, left, right, pivot_index)
  pivot_value = array[pivot_index]
  array[pivot_index], array[right] = array[right], array[pivot_index]
  store_index = left

  (left..right-1).each do |i|
    if array[i] < pivot_value
      array[i], array[store_index] = array[store_index], array[i]
      store_index = store_index + 1
    end
  end

  array[store_index], array[right] = array[right], array[store_index]
  return store_index
end

# Testing:

a = []
20.times do
  a << rand(200)
end
p "Usorted: #{a}"
quick_sort(a, 0, a.length - 1)
p "Sorted: #{a}"