def translate(sentence)

word = sentence.split(' ')

word.map { |word| pig_latin(word)}.join(' ')

end

def pig_latin(word)
  case 
  when word[0] =~ /[aeiou]/
    return "#{word}ay"
  when word[0] == 'q' && word[1] == 'u' 
    return word[2..(word.length - 1)] + word[0..1] + 'ay'
  when 
    word[1] == 'q' && word[2] == 'u'
    return word[3..(word.length - 1)] + word[0..2] + 'ay'
  when word[1] =~ /[aeiou]/
    return word[1..(word.length - 1)] + word[0] + 'ay'
  when word[2] =~ /[aeiou]/
    return word[2..(word.length - 1)] + word[0..1] + 'ay'
  else
    return word[3..(word.length - 1)] + word[0..2] + 'ay'
  end
end