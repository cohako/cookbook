puts 'Bem vindo ao livro de receitas'

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while opcao != 3 do
  if opcao == 1
    puts 'Digite o nome da receita: '
    nome_receita = gets.chomp()
    puts 'Digite o tipo: '
    tipo = gets.chomp()

    receitas << {nome_receita: nome_receita, tipo: tipo}
    puts "Receita #{nome_receita} cadastrada com sucesso!\n"
    puts 'Adicionar nova receita?'
  
  elsif opcao == 2
    puts '=======Receitas cadastradas======='
    #o each nada mais faz que percorrer o array e jogar dentro
    #de uma variavel de bloco
    receitas.each do |receita|
      puts "#{receita[:nome_receita]} -- #{receita[:tipo]}"
    end
    # o ruby entende que um puts (nome_array) significa que 
    #o usuario quer mostrar os dados do array
  else
  puts "Opção inválida"
  end
  puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()
end
