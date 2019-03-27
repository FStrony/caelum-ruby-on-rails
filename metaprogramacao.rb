#encoding: utf-8

#Exercicio 5.3
#1
class Restaurante 
	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		@@total ||= 0
		@@total = @@total + 1
		@nome = nome
	end

	def qualifica(msg="Obrigado!")
		puts "A nota do #{@nome} foi #{@nota}. #{msg}"
	end
	
	#=begin
	def nota=(nota)
		@nota = nota
	end

	def nota
		@nota
	end
	#=end
	
	class << self
		def relatorio	
	#def self.relatorio
			puts "Foram criados #{@@total} restaurantes"
		end
	end


end

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fasano1")
restaurante_tres = Restaurante.new("Fasano2")

Restaurante.relatorio


