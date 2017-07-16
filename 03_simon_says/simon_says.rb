def echo(word)
  word
end

def shout(words)
  words.upcase
end

def repeat(word, num = 2)
  word + " #{word}"*(num - 1)
end

def start_of_word(word, num)
  word[0...num]
end

def first_word(sentence) 
  sentence.split(' ').first
end 

def titleize(title)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  new_title = []
  title = title.capitalize
  title.split(' ').map do |word|
    if words_no_cap.include?(word)
      new_title << word 
    else
      new_title << word.capitalize
    end
  end
  return new_title.join(' ')
end  