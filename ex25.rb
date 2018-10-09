module Ex25

  # This function will break up words for us.
# The reverse of the .split function is .join
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  # Sort can also call .sort_by(&:length)
  def Ex25.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  # Shift can also move variables contained in an array
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  # Push and pop will add and remove variables into arrays
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end
