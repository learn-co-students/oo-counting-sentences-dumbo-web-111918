require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end




  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
  new_one = self.split(/[.?!]/)
  new_one.reject! do |string|
      string.empty?
  end
  new_one.count
#  binding.pry
  end
end
