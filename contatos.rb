
require_relative "pessoa"

class Contatos < Pessoa

  def initialize(nome, numero)
    super(nome, numero)
  end

  def listar_contatos
    @agenda.each do |lista|
      puts "Nome: #{lista[:nome]} - Número: #{lista[:numero]}"
      puts "----------------------------------"
    end
  end

end

contato = Contatos.new("Simba", "78945612")
contato.listar_contatos