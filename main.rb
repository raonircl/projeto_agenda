
require_relative "contatos"
require_relative "pessoa"

# @agenda = [
#   { nome: "Fulano", numero: "23123568" },
#   { nome: "Beltrano", numero: "85232132" },
#   { nome: "sicrano", numero: "98755666" }
# ]

contatos = Contatos.new("Fulano", "55887799")

loop do
  puts "1. Contatos\n2. Adicionar Contatos\n3. Ver Contatos\n4. Editar Contatos\n5. Remover Conttos\n0. Sair"
  op = gets.chomp.to_i

  case 
    when op == 0
      puts "Até mais!"
      break
    when op == 1
      contatos.listar_contatos
    when op == 2
      print "Nome: "
      nome = gets.chomp
      print "Número: "
      numero = gets.chomp
      puts "----------------------------"
      contatos.adicionar_contato(nome, numero)
    when op == 3
      contatos.buscar_contato
    when op == 4
      contatos.editar_contato
    when op == 5
      contatos.remover_contato
    else
    puts "Essa opção não existe!"
  end

end
