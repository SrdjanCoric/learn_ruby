#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b 
end

def sum(a)
  a.inject(0, :+)
end

def multiply(a, b, c = 1)
  a * b * c
end

def power(a, b)
  a ** b
end

def fact(a)
  result = 1
    while a > 0
      result = result * a
      a -= 1 
    end 
  return result
end
