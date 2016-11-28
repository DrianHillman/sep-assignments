def binary_search(collection, value, from=0, to=nil)
  to = collection.length - 1 if to.nil?
  mid = (from + to) / 2

  if value < collection[mid]
    return binary_search collection, value, from, mid - 1
  elsif value > collection[mid]
    return binary_search collection, value, mid + 1, to
  else
    return mid
  end
  
  return "Not Found."
end