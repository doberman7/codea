=begin
Para este ejercicio tendrás que crear de nuevo dos métodos que reciban un integer positivo n y regresen el el nth fibonacci number, un método iterativo y un método recursivo.
QUÈ ES NTH FIBONACHI?

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
=end
def fibonacci_recursive(n)
  case n
  when 0 then 0
  when 1 then 1
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end
p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
