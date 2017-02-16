#Script: returns the factorial of a number
# DEFINE factorial_method,
# ASIGGN the argument method the "n"
# ASIGGN value of n to "factorial" variable
# IF n is less than two
#   ASIGGN 1 to factorial
# ENDIF
# IF n is equal or bigger than 2
#   FOR variable iteration  in 2..n-1
#     factorial asiggned to the product factorial and i
#   ENDFOR
# RETURN factorial
# ENDIF
def factorial_method(n)# define the method and argument
  factorial = n#the value of facotorial asiggned equal the value if n
  factorial = 1 if n < 2# if n < 2 then factorial is 1
  if n >= 2# if n is bigger o equal to 2 then...
    for i in 2..n-1#run i to n-1
        factorial =  factorial * i#factorial assigned the product of factorial and i, each time the value of i grows
    end#end of for loop
  end#end of if condition
 factorial#implicit return
end
#driver code
p factorial_method(8)
