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
 	0 if n == 0
	1 if n == 1
end
p fibonacci_recursive(0) #== 0
p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5
