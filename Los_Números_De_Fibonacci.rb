require 'benchmark'

#a source: https://gist.github.com/Morralito/5038944
def fibonacci_iterative(n)
   if n==0# CONDITION if argument 'n' is 0
    fibonacci_sucesion_result =  0# ASSINGN value 0
   else
    previous_number_at_fibonacci = 0 #ASSIGN equivalent to n-1,
    fibonacci_sucesion_result = 1 #ASSGIN the preveous value of fibonacci
    for v in 0..n-2 #FOR that goes from
         sum_prev_plus_result = previous_number_at_fibonacci + fibonacci_sucesion_result
         previous_number_at_fibonacci= fibonacci_sucesion_result #
         fibonacci_sucesion_result = sum_prev_plus_result
    end
  end
 fibonacci_sucesion_result
end

# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
#p  fibonacci_iterative(5) == 5


def fibonacci_recursive(n)
  case n
  when 0 then 0
  when 1 then 1
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5

puts Benchmark.measure {fibonacci_iterative(38)}#measure and report the time f ITERATIVEE
puts Benchmark.measure {fibonacci_recursive(38)}#measure and report the time f RECURSIVE, it is much slowe than iterative
