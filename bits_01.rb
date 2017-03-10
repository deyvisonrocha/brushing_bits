require_relative 'lib/brushing.rb'
puts "##############################################"
puts "# Escovando bit's - v0.1 # by Deyvison Rocha #"
puts "##############################################"

puts ""

puts "Digite o primeiro número: "
first = gets.chomp
first_i = first.to_i
puts "Digite o segundo número: "
second = gets.chomp
second_i = second.to_i

brushing = Brushing.new

brushing.extract(first_i, second_i)

total = brushing.total

puts "O total de números 1, em binário, no intervalo de " + first + " e " + second + " é: " + total.to_s
