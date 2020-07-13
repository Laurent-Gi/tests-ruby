def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(tab)
  tab.sum
end

def multiply(a,b)
  a*b
end

def power(a,b)
  a**b
end

def factorial(n)

  (1..n).inject(:*) || 1  # || gère l'exception du 0 (ou nombre négatifs)

  # Autre possibles :
  # -----------------
  #(1..n).reduce(:*) || 1
  #n <= 1 ? 1 : n * factorial(n-1)
end

