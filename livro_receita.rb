INSERIR = 1
VISUALIZAR_RECEITAS = 2
PESQUISAR_RECEITA = 3
SAIR = 0

puts 'Bem vindo ao livro de receitas'
def menu()
  puts "[#{INSERIR}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
  puts "[#{PESQUISAR_RECEITA} Pesquisar por uma receita"
  puts "[#{SAIR}] Sair"
  print "Escolha uma opção: "
  return gets.to_i()
end

def inserir_receita()
      
  puts 'Digite o nome da receita: '
  nome_receita = gets.chomp()
  puts 'Digite o tipo: '
  tipo = gets.chomp()
  puts "Receita #{nome_receita} cadastrada com sucesso!\n\n"
  return {nome_receita: nome_receita, tipo: tipo}

end

def imprimir_receitas(receitas)
  puts '=======Receitas cadastradas======='
  #o each nada mais faz que percorrer o array e jogar dentro
  #de uma variavel de bloco
  receitas.each do |receita|
    puts "\n #{receita[:nome_receita]} -- #{receita[:tipo]} \n"
  end
  if receitas.empty?
    puts "nenhuma receita cadastrada"
  end
end

def buscar_receitas(receitas)
  puts "Digite o nome da receita"
  receita = gets.chomp()

  receitas.each do |nome|
    nome.include? (receita)
      puts "Busca Concluida"
      puts "#{nome[:nome_receita]}"
      puts
  end
end

receitas = []

opcao = menu()
loop do
  if opcao == INSERIR

    receitas << inserir_receita()
     
  elsif opcao == VISUALIZAR_RECEITAS

    imprimir_receitas(receitas)

    # o ruby entende que um puts (nome_array) significa que 
    #o usuario quer mostrar os dados do array
  elsif opcao == SAIR

    break

  elsif opcao == PESQUISAR_RECEITA
    buscar_receitas(receitas)

  else

    puts "Opção inválida"
  
  end

  opcao = menu()
end