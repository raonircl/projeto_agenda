
require_relative "pessoa"

class Contatos < Pessoa

  def initialize(nome, numero)
    super(nome, numero)
    @agenda = []
  end

  def adicionar_contato(nome, numero)
    @agenda << { nome: nome, numero: numero }
    puts "Contato adicionado!"
  end

  def editar_contato
    print "Qual contato você quer editar: "
    nome = gets.chomp

    @agenda.each do |contato|
      if contato[:nome].downcase == (nome.downcase)
        print "Deseja continuar editando o nome? senão, aperte enter:"
        nome_edit = contato[:nome]

        contato[:nome] = gets.chomp
        contato[:nome] = contato[:nome].empty? ? nome_edit : contato[:nome]
        
        print "Deseja continuar editando o número? senão, aperte enter: "
        numero_edit = contato[:numero]

        contato[:numero] = gets.chomp
        contato[:numero] = contato[:numero].empty? ? numero_edit : contato[:numero] 
      end
    end
    puts "---------------------------------"
  end

  def listar_contatos
    @agenda.each do |lista|
      puts "Nome: #{lista[:nome]} - Número: #{lista[:numero]}"
      puts "----------------------------------"
    end
  end

  def buscar_contato
    print "Buscar contato: "
    nome = gets.chomp

    busca = @agenda.select { |contato| contato[:nome].downcase.include?(nome.downcase) }
    if busca.empty?
      puts "Contato não encontrado!"
    else
      busca.each do |contato|
        puts "Nome: #{contato[:nome]} - Número: #{contato[:numero]}"
        puts "---------------------------------"
      end
    end  
  end

  def remover_contato
    puts "Remover contato: "
    nome = gets.chomp
    @agenda.reject! { |contato| contato[:nome].downcase == nome.downcase }
    puts "Contato removido!"
  end

end
