
require_relative "pessoa"

class Contatos < Pessoa

  def initialize(nome, numero)
    super(nome, numero)
  end

  def adicionar_contato(nome, numero)
    @agenda << { nome: nome, numero: numero }
    puts "Contato adicionado!"
  end

  def listar_contatos
    @agenda.each do |lista|
      puts "Nome: #{lista[:nome]} - Número: #{lista[:numero]}"
      puts "----------------------------------"
    end
  end

  def buscar_contato
    contatos = @agenda.select { |contato| contato[:nome].downcase.include?(nome.downcase) }
    if contatos.empty?
      puts "Contato não encontrado!"
    else
      contatos.each do |contato|
        puts "Nome: #{contato[:nome]} - Número: #{contato[:numero]}"
      end
    end  
  end

  def remover_contato
    @agenda.reject! { |contato| contato[:nome].downcase == nome.downcase }
    puts "Contato removido!"
  end

end
