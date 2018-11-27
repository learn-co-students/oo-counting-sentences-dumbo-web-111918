require 'pry'

class String

  attr_reader :text

  def initialize
      @text = text
  end

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
    a = self.split(/\?|\.|!/)
a.reject { |element| element.empty? }.count
  end
end
