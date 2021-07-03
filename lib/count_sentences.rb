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
    self.split(/[.!?]/).select{|sentances| sentances.length > 1}.count
    # binding.pry
  end

end

def function(string)
  here = []
  here << string
  return here + "this is a string"
end
