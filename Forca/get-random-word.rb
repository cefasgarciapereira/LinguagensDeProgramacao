def get_random_word(file = "wordlist.txt", words_number = 25477)
  line = IO.readlines(file)[rand(words_number)]

  return line
end
