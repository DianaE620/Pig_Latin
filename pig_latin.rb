

def pig_latin(string)

  expresion = []
  i = 0

  if string =~ /\A[aeiou]/
    string + "way"
  else
    loop do 
      if string[i] =~ /[^aeiou]/
        expresion << string[i]
      end

      i += 1
      break if string[i] =~ /[aeiou]/
    end

    string.gsub(/#{expresion.to_s}/, " ").strip + expresion.join + "ay" # to_s in Array is an Alias for: inspect (Creates a string representation of self.)
  end

end

p pig_latin("hola")
p pig_latin("trash")
p pig_latin("pig")
p pig_latin("glove")



# a = "[\"h\"]"
# b = "[\"t\", \"r\"]"

# p "hola".gsub(/#{a}/, " ").strip 

# p "trash".gsub(/#{b}/, " "). strip










