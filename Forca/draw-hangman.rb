def draw_hangman(lives)
  puts
  # draws upper part
  spaces_number = 5
  if (lives < 6 && lives > 0)
    spaces_number = 0
    print("    O")
  end
  if (lives < 1)
    spaces_number = 0
    print("    Ø")
  end
  print(" " * spaces_number)
  puts('‾‾‾‾‾‾|')

  # draws body / middle part
  spaces_number = 11
  if (lives < 5)
    print("   /")
    spaces_number = 7
  end
  if (lives < 4)
    print("|")
    spaces_number = 6
  end
  if (lives < 3)
    print("\\")
    spaces_number = 5
  end
  spaces = " " * spaces_number
  print(spaces + "|")
  puts

  # draws bottom parts
  spaces_number = 11
  if (lives < 2)
    print("   /")
    spaces_number = 7
  end
  if (lives < 1)
    spaces_number = 5
    print(" \\")
  end
  
  spaces = " " * spaces_number
  puts(spaces + "|")
  spaces = " " * 10
  puts(spaces + "/|\\")
  puts
end
