def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str,n=2)
  chaine = (str + " ") * n   # Ajout d'un espace entre les mots.
  chaine[0..chaine.length-2] # Suppression du dernier espace (pop ?)
end

def start_of_word(str, n=1)
  str[0..n-1]
end

def first_word(str)
  str.split[0]
end

def titleize(str)  

  str.split.map.with_index{|w, i| (w.size>3||i==0)?w.capitalize: w}.join(' ')

end

  # chaine = str.split # C'est un tableau
  # chaine.size.times do |i|
  #   if i==0 || chaine[i].length > 3 then
  #     chaine[i] = chaine[i].capitalize
  #   end
  # end
  # chaine.join(' ')

# Poubelle du code :
# str.split(' ').map.with_index{|x, i| ['and', 'the'].include?(x.downcase)?(i==0?x.capitalize: x.downcase): x.capitalize}.join(" ")