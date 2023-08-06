
loop 
  puts "1. Contatos\n2. Adicionar Contatos\n3. Ver Contatos\n4. Editar Contatos\n5. Remover Conttos\n0. Sair"
  op = gets.chomp.to_i

  case 
  when op == 0
    puts "Até mais!"
  when op == 1
  when op == 2
  when op == 3
  when op == 4
  when op == 5
  else
    puts "Essa opção não existe!"
  end
end
