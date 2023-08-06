
require_relative "contatos"
require_relative "pessoa"

loop do
  puts "1. Contatos\n2. Adicionar Contatos\n3. Ver Contatos\n4. Editar Contatos\n5. Remover Conttos\n0. Sair"
  op = gets.chomp.to_i

  case 
    when op == 0
      puts "Até mais!"
      break
    when op == 1
      listar_contatos
    when op == 2
      adicionar_contato
    when op == 3
      buscar_contato
    when op == 4
      editar_contato
    when op == 5
      remover_contato
    else
    puts "Essa opção não existe!"
  end

end
