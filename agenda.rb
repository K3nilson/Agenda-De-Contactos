
@contact = [
    {nome: "Keni", telefone: "965789012"},
    {nome:"Alfia", telefone: "952823456"},
    {nome:"Yezi", telefone: "952823456"}
]



def all_contact
    puts "--------------------------------------------"
   @contact.each do |contacto|
        puts "#{contacto[:nome]} - #{contacto[:telefone]}"
   end
    puts "--------------------------------------------"
end

def add_contactos
    puts "---------------------------------------"
    puts "Nome:"
    nome = gets.chomp.to_s
    puts "Telefone:"
    telefone = gets.chomp.to_i
    @contact << {nome: nome, telefone: telefone}
    puts "---------------------------------------"
    puts "Contacto '#{nome}' Foi Adicionado"
    puts "---------------------------------------"
end

def ver_contact
    puts "Qual o Nome Do Contacto Que Pretende Ver:"
    find = gets.chomp.to_s
    @contact.each do |contacts|
        if contacts[:nome].upcase == (find.upcase)
            puts "---------------------------------------"
            puts "#{contacts[:nome]} - #{contacts[:telefone]}"
            puts "---------------------------------------"
            break
            
        end
    end
end

def edit_contact
    puts "Nome Do Contacto Que Deseja Editar:"
    nome = gets.chomp
    @contact.each do |contacts|
        if contacts[:nome].upcase == (nome.upcase) 
            puts "Nome Pra Editar (Se Pretende Manter Prima Enter)"
            salvo = contacts[:nome]

            
            contacts[:nome] = gets.chomp 
            contacts[:nome] = contacts[:nome].empty? ? salvo : contacts[:nome] 
            puts "Número Pra Editar (Se Pretende Manter Prima Enter)"
            salv = contacts[:telefone]
            contacts[:telefone] = gets.chomp
            contacts[:telefone] = contacts[:telefone].empty? ? salv : contacts[:telefone] 
            break
        end
    end
end

def remov
    puts "Qual o Nome Do Contacto Que Deseja Remover:"
    nome = gets.chomp
    @contact.each do |contacts|
        if contacts[:nome].upcase == (nome.upcase)
            indece = @contact.index(contacts)
            @contact.delete_at(indece)
            puts "---------------------------------------"
            puts "Contacto '#{contacts[:nome]}' Foi Deletado"
            puts "---------------------------------------"
        end  
    end
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
when get == 2
    add_contactos
when get == 3
    ver_contact
when get == 4
    edit_contact
when get == 5
    remov
end
end