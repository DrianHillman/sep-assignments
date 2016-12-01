def runtime_calculate(input)
  result = 2 ** input
  return result
end

puts "Input, Size (n)"
0.upto(15) { |i|
  puts "#{i}, #{runtime_calculate(i)}"
}
