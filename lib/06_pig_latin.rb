def ajout_ay(str)
  str+"ay"
end

def modif_pert_ay(str,n=1)
  return ajout_ay(str[n..str.length] + str[0..n - 1])
end

def nombre_de_mots(str)
  str.split.size
end


def translate_un_mot(str)

  # /[aeiouy].*/ =~ str
  # /[^aeiouy].*/ =~ str

  if /^[aeiouy]/ =~ str then
    # Commence par une voyelle
    ajout_ay(str)
  elsif /squ.*/ =~ str then
    # "Commence par ces 3 consonnes squ"
    modif_pert_ay(str,3)
  elsif /qu.*/ =~ str then
    # "Commence par une consonne 2 qu"
    modif_pert_ay(str, 2)
  elsif /sch.*/ =~ str then
    # "Commence par une consonne 3 sch"
    modif_pert_ay(str, 3)
  elsif /[^aeiouy][^aeiouy][^aeiouy].*/ =~ str then
    # "Commence par une consonne thr 3c"
    modif_pert_ay(str, 3)
  elsif /[^aeiouy][^aeiouy].*/ =~ str  then # 2 consonnes
    # "Commence par une consonne 2 consonne (cas cherry) "
    modif_pert_ay(str, 2)
  elsif /[^aeiouy].*/ =~ str  then # Une seul consonne
    # consonne puis voyelle :
    modif_pert_ay(str, 1)
  end
end


def translate_phrase(str)
  str.split.map{|mot| translate_un_mot(mot)}.join(' ')
end

def translate(str)

  if nombre_de_mots(str) < 1
    str
  elsif nombre_de_mots(str) > 1
    #  "UNE PHRASE"
    translate_phrase(str)
  else
    #    "UN MOT"
    translate_un_mot(str)
  end

end
