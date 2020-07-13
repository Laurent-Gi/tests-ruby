# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# Conversion de la température : °F Farenheit // °C degré Celcius 
# Le formules de conversion : (0 °C × 9/5) + 32 = 32 °F
#                             (32 °F − 32) × 5/9 = 0 °C
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


# ============================================================
# Fonction °F to °C : conversion de températures de °F vers °C
# ============================================================
def ftoc(temp_f)

  (temp_f.to_f - 32) * 5/9

end

# ============================================================
# Fonction °C to °F : conversion de températures de °C vers °F
# ============================================================
def ctof(temp_c)

  (temp_c.to_f * 9/5) + 32

end


# puts ftoc(32)   # 0
# puts ftoc(212)  # 100
# puts ftoc(222)  # 100.555555555556
# puts ftoc(98.6) # 37
# puts ftoc(68)   # 20

# puts ctof(0)    # 32
# puts ctof(100)  # 212
# puts ctof(20)   # 68
# puts ctof(37)   # 98.6 : .to be_within(0.1).of(98.6)
