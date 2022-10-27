def hola
    puts 'Hola mundo'
end

def  hola (nombre)
    puts "Hola #{nombre}"
end

puts hola


#metodos bang

nombre = 'juan'

#sin metodo bang
puts nombre.upcase
puts nombre

# con metedo bang cambio el objeto que ejecuta el metodo

puts nombre.upcase!
puts nombre
