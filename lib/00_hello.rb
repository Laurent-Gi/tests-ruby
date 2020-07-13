# Méthode pour dire Bonjour !
def hello
  "Hello!"
end

# Méthode pour saluer quelqu'un en utilisant son prénom ou pseudo
def greet(name)

  return hello if name.to_s.empty?

  # Si il y a un prénom ou pseudo, on l'utilise
  "Hello, #{name}!"

end

# Petit programme 
def ask_name
  print "Quel est votre prénom ?\n> "
  name = gets.chomp
end


def perform
  name = ask_name
  puts greet(name)
end

# -------------------------------------------------------

perform 

puts greet(1.278)
puts greet(false)
puts greet(17)