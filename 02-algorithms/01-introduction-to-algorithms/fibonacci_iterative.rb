def fib(n)
  return 0 if n < 1
  
  fib_0 = 0
  fib_1 = 1
  
  1.upto(n-1){ 
    temp = fib_0
    fib_0 = fib_1
    fib_1 = temp + fib_1
  }
  fib_1
end

0.upto(10){ |i|
  puts fib(i)
}