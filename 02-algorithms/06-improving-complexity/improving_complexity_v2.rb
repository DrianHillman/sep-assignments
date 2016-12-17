# Improving Time Complexity
def time_complexity_sort(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.delete_at(-1)]
  combined_array_length = combined_array.length
  
  (0..combined_array_length/2).each do |i|
    left_val = combined_array[i]
    right_val = combined_array[combined_array_length - i - 1]
    
    sorted_array << left_val
    sorted_array << right_val
  end
  
  quicksort(sorted_array)
  sorted_array
end

def quicksort(list)  
  return list if list.size <= 1  
  pivot = list.sample  
  left, right = list.partition { |e| e < pivot }  
  quicksort(left) + quicksort(right)  
end