require 'pry'

class String
  
    def sentence?
      return self.end_with?(".")? true : false
    end
  
    def question?
      return self.end_with?("?")? true : false
    end
  
    def exclamation?
      return self.end_with?("!")? true : false
    end
  
    def count_sentences
      
       sentence_splitter = self.split(/[.!?]/)
       new_arr_sentence = sentence_splitter.reject { |n| n == "" || n == " " }
       return new_arr_sentence.count
  
    end
  
  end

