puts 'Bem vindo ao livro de receitas'
def menu()
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"
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
end


receitas = []

opcao = menu()
while opcao != 3 do
  if opcao == 1

    receitas << inserir_receita()
     
  elsif opcao == 2

    imprimir_receitas(receitas)

    # o ruby entende que um puts (nome_array) significa que 
    #o usuario quer mostrar os dados do array
  else

  puts "Opção inválida"
  
  end

  opcao = menu()

end
