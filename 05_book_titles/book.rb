class Book
  def title=(title)
    @title = title
  end

  def title
    conjuctions = ['in', 'the', 'of', 'and', 'to', 'an', 'a']
    result = []
    @title.split(' ').map do |word|
      if conjuctions.include?(word)
        result << word 
      else
        result << word.capitalize
      end
    end
    result[0] = result[0].capitalize
    return result.join(' ')
  end
end
