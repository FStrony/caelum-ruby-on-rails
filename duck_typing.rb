#encoding: utf-8

#Exercicio 5.6


class Franquia
	def info
		puts "Restaurante faz parte da franquia"
	end
end

class Restaurante  < Franquia
	def info
		super
		puts "Restaurante Fasana"
	end
end

# metodo importante
# recebe franquia e invoca o método info
def informa(franquia)
	franquia.info
end

restaurante = Restaurante.new
informa restaurante


