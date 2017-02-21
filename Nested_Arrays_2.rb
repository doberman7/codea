#abecedario = ('A'..'Z').last(20) => G..Z
#p que_sera = Array.new(3) { abecedario.pop(2) } => [["Y", "Z"], ["W", "X"], ["U", "V"]]
=begin
O | O | O |
--  --  --
O | O | X |
--  --  --
X | X | X |
--  --  --
=end
def gato
convinacion  = "X" , "0" , "O", "O", "X", "O","O", "O", "X"
	convinacion = Array.new(3) {convinacion.pop(3)}
	convinacion.each do |line|
		line.each do |i|  i + "\s|\s"
		end
	p convinacion
		#  print "#{line}\n"
		#  puts "-------------\n"

	end
end
  gato
