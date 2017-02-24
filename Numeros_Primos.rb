=begin
Deberás crear un método que reciba un integer y devuelva un array con la combinación de números primos que lo componen. Aplica el paradigma Divide y Vencerás y escribe pseudocódigo antes de empezar con el código.
=end
require "prime"#REQUERIR class prime
def prime_factors(n) #DEFINE the method name and argument
  factor = 0#
  array = []
  for i in 2..n-1
    factor = (n / i)
    array << factor if Prime.prime?(factor)
  end
  array.sort
end

p prime_factors(4) #=> [2, 2]
p prime_factors(9) #=> [3, 3]
p prime_factors(12) #=> [2, 2, 3]
p prime_factors(34) #=> [2, 17]
