require_relative 'draw-hangman'
require_relative 'generate-revealed'
require_relative 'get-random-word'
require 'set'


word = get_random_word.chomp.split("", -1)
revealed = generate_revealed(word.length - 1)
lives = 6
hits = 0
guessed_letters = Set[]

while lives > 0 && hits < word.length - 1
  draw_hangman(lives)
  puts(revealed)
  puts

  puts("Acertos: " + hits.to_s + "/" + revealed.length.to_s)
  puts("Vidas: " + lives.to_s)
  puts

  puts "Digite uma letra: "
  input = gets()
  system "clear"
  has_a_hit = false

  next if input.length > 2 || guessed_letters.include?(input)

  guessed_letters.add(input)

  word.each_with_index do |letter, index|    
    if (input.chomp.casecmp?(letter))
      revealed[index] = letter
      hits = hits + 1
      has_a_hit = true
    end
  end
  if (!has_a_hit)
    lives = lives - 1
  end
end

if lives == 0 
  puts("Você perdeu :(")
  puts("A palavra era " + word.join(""))
else
  puts("Parabéns, você ganhou! :)")
end

