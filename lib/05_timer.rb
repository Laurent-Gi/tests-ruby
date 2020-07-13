def time_string(number)
  # Fonction qui va renvoyer une string au format "dd:dd:dd"

  # Pour ne pas dépasser 24 heures / 86400
  number_of_seconds = number % 86400

  number_of_hours = number_of_seconds / 3600
  reste = number_of_seconds % 3600
  number_of_minutes = reste / 60
  reste = reste % 60
  number_of_seconds = reste % 60
  
  sprintf '%02d:%02d:%02d', number_of_hours, number_of_minutes, number_of_seconds

end