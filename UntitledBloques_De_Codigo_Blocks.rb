# def greet
# 	puts "top"
# 	yield
# 	puts "bottom"
# end
# greet do
# 	puts "midle"
# end
p t = Time.now
def fibonacci_recursive(n)
  case n
  when 0 then 0
  when 1 then 1
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end
p fibonacci_recursive(35)
p t2 = Time.now

p  t2 - t
