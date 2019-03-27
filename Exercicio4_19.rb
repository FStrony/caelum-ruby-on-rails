#encoding: utf-8

#Exercicios 4.19
class Franquia

	def initialize
		@restaurantes = []
	end
	
	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end
end

class Restaurante
	attr_accessor :nome

	def fechar_conta(dados)
		puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
	end
	
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano2"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao2"

franquia = Franquia.new

franquia.adiciona restaurante_um, restaurante_dois

#chamada com blocos
franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end
