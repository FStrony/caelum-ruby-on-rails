#encoding: utf-8

#Exercicio 3.12
#1
#estrutura de controle

	nota = 10

	if nota > 7
		puts "Boa nota!"
	else
		puts "Nota ruim!"
	end



#2
# estrutura de controle: for
	for i in (1..3)
		x = i
	end
	puts x

#3
# Teste rexp
	puts /rio/ =~ "são paulo" 
	puts /paulo/ =~ "são paulo"

#4
# Operador ||
	restaurante ||= "Fogo de Chao"
	puts restaurante
