def draw_hangman(lives)
  puts('------------')
  if (lives < 6 && lives > 0)
    print("    O   ")
  end
  if (lives < 1)
    print("    Ø   ")
  end
  puts('')
  if (lives < 5)
    print("   /")
  end
  if (lives < 4)
    print("|")
  end
  if (lives < 3)
    print("\\")
  end
  puts('')
  if (lives < 2)
    print("   /")
  end
  if (lives < 1)
    print(" \\")
  end
  puts('')
  puts('------------')
end
