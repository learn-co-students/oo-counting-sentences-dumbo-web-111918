require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentences = 0
    last_char = ""
    self.each_char do |i|
      if %w[ . ? !].include?(i)
        if last_char != i
          sentences += 1
        end
      end
      last_char = i
    end
    sentences
  end
end
