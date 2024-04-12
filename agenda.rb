
@contact = [
    {nome: "Keni", telefone: 948736226}
]



def all_contact
   
end



loop do

puts "1. Contactos\n2. Adicionar Contactos\n3. Ver Contactos\n4. Editar Contactos\n5. Remover Contactos\n6. Sair"  
get = gets.chomp.to_i

case 
when get == 6
    puts "--------------------------"
    puts "Tchau,Volte Sempre"
    break
when get == 1
    all_contact
end


end