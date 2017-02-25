=begin
Deberás crear un método que reciba un integer y devuelva un array con la combinación de números primos que lo componen. Aplica el paradigma Divide y Vencerás y escribe pseudocódigo antes de empezar con el código.
=end
require "prime"#REQUERIR class prime
def prime_factors(n) #DEFINE the method name and argument
  array = []#CREAtES
  for prime_factor in 2..n-1 # FOR a variable call "prime" factor in 2 to n less 1
      if Prime.prime?(prime_factor) #COMPARE prime_factor with th class prime, TRUE if its sa prime
        while n % prime_factor == 0 # WHILE argument module is prime is 0 then..
          n = n / prime_factor #ASSIGN n the value of n the division of n betwen prime
          array << prime_factor #push prime in the array
        end
      end
  end
  array
end

 p prime_factors(4) #=> [2, 2]
 p prime_factors(9) #=> [3, 3]
 p prime_factors(12) #=> [2, 2, 3]
 p prime_factors(34) #=> [2, 17]
