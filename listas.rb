#encoding: utf-8


#Exercicios 4.17

#1
nomes = []

nomes[0] = "Fasano"
nomes << "Fogo de Chao"

for nome in nomes
	puts nome
end

#2 AND 3
class Franquia

	def initialize
		@restaurantes = []
	end

	#def adiciona(restaurante)
	#	@restaurantes << restaurante
	#end
	
	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		for restaurante in @restaurantes
			puts restaurante.nome
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
#franquia.adiciona restaurante_um
#franquia.adiciona restaurante_dois

franquia.adiciona restaurante_um, restaurante_dois

franquia.mostra

restaurante_um.fechar_conta :valor => 50, :nota => 9, :comentario => 'Gostei!'



