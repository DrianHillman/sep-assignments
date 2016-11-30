def bucket_sort(array)
  return array if array.uniq.length == 1

  buckets = []

  array.each do |num|
    buckets[num] = [] if buckets[num].nil?
    buckets[num].push(num)
  end

  sorted = []
  buckets.each do |bucket|
    next if bucket.nil?
    bucket = bucket_sort(bucket) if bucket.length > 1
    sorted << bucket
  end

  return sorted.flatten!
end

# Testing:

a = []
20.times do
  a << rand(200)
end
p "Usorted: #{a}"
p "Sorted: #{bucket_sort(a)}"