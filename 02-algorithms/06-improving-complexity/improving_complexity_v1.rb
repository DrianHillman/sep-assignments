# Small Code Optimizations
def ruby_optimized_sort(*arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end

  sorted_array = [combined_array.delete_at(-1)]

  for val in combined_array
    sorted_length = sorted_array.length
    
    for i in 0..sorted_length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_length - 1
        sorted_array.insert(i, val)
        break
      end
    end
  end
    
  # Return the sorted array
  sorted_array
end