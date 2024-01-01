# frozen_string_literal: true

# fib implemtation using function recursion
def fib_recursive(number, sum = 0)
  if number.zero?
    sum
  else
    fib_recursive(number - 1, sum + number)
  end
end

# fib implementation using iteration(loops)
def fib_iterative(number)
  sum = 0
  until number.zero?
    sum += number
    number -= 1
  end
  sum
end

puts fib_recursive(5)
puts fib_iterative(5)
puts ''
puts fib_recursive(200)
puts fib_iterative(200)
