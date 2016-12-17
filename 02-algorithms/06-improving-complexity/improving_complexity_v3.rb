# Improving Space Complexity
def space_complexity_sort(*arrays)
  arrays.flatten!

  sorted_array = [arrays.delete_at(-1)]

  for val in arrays
    sorted_array.length.times do |i|
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array.insert(i, val)
        break
      end
    end
  end
    
  # Return the sorted array
  sorted_array
end