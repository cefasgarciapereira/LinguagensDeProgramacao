require_relative 'draw-hangman'

word = "BICICLETA".split("", -1)
revealed = "_________"
lives = 6
hits = 0

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
