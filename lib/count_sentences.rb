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
    string_arr = self.split(/\.|\?|\!/)
    string_arr.reject { |e| e== "" || e==[]}.count
  end
end
