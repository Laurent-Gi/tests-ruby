# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
def who_is_bigger(a, b, c)

  return "nil detected" if a==nil || b==nil || c==nil

  letter_max='a'

  if a > b then
    max = a
    # letter_max='a' ... initialisé par défaut
  else
    max = b
    letter_max='b'
  end

  if max < c then
    letter_max='c'
  end

  "#{letter_max} is bigger"
end
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
def reverse_upcase_noLTA(str)
  str.reverse.upcase.gsub(/[LTA]/,'')
end
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
def array_42(tab)
  tab.index(42) != nil
end
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
def magic_array(tab)
  tab.flatten.sort.map{|n|n*2}.reject{|n|n%3==0}.uniq
end
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

# puts who_is_bigger(nil, 42, 21)
# puts who_is_bigger(84, 42, 21)
# puts who_is_bigger(42, 84, 21)
# puts who_is_bigger(42, 21, 84)

# puts reverse_upcase_noLTA("Tries this at Home, Kids")    # "SDIK ,EMOH  SIH SEIR"
# puts reverse_upcase_noLTA("Ponies loves carrots")        # "SORRC SEVO SEINOP"
# puts reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")  # "NBVCXZ;KJHGFDSPOIUYREWQ"

# puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10]) # false
# puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5]) # true

# puts magic_array([1, 2, 3, 4, 5, 6])                             # ([2, 4, 8, 10])
# puts magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])        # ([2, 4, 8, 10, 46, 62])
# puts magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])  # ([2, 4, 14, 16, 64])
