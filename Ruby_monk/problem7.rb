# Given a sentence, return true if the sentence is a palindrome.

def palindrome?(sentence)
  string = sentence.downcase.delete(" ")
  if string == string.reverse
    return true
  else 
    return false
  end
end
