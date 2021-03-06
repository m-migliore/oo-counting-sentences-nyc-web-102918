require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!") 
  end

  def count_sentences
    raw_sentence_array = self.split(" ")
    sentence_array = raw_sentence_array.select { |sentence| sentence.sentence? || sentence.question? || sentence.exclamation? }
    sentence_array.length
  end
end
