
require_relative "pessoa"

class Salvar < Pessoa

  def initialize(nome, numero)
    super(nome, numero)
  end

  def salvar_contato
    print "Nome: "
    nome = gets.chomp
    print "Número: "
    numero = gets.chomp
    @agenda << { nome: nome, numero: numero }
    puts "-----------------------------------"
  end

end