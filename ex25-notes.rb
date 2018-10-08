note = <<END
PS C:\ruby\The-Catbox> irb
irb(main):001:0> require "./ex25.rb"
=> true
irb(main):002:0>
irb(main):003:0* sentence = "All good things come to those who wait."
=> "All good things come to those who wait."
irb(main):004:0> words = Ex25.break_words(sentence)
=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
irb(main):005:0> words
=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
irb(main):006:0> sorted_words = Ex25.sort_words(words)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):007:0> sorted_words
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):008:0> Ex25.print_first_word(words)
All
=> nil
irb(main):009:0> Ex25.print_last_word(sorted_words)
who
=> nil
irb(main):010:0> words
=> ["good", "things", "come", "to", "those", "who", "wait."]
irb(main):011:0> Ex25.print_first_word(sorted_words)
All
=> nil
irb(main):012:0> Ex25.print_last_word(sorted_words)
wait.
=> nil
irb(main):013:0> sorted_words
=> ["come", "good", "things", "those", "to"]
irb(main):014:0> sorted_words = Ex25.sort_sentence(sentence)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):015:0> sorted_words
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):016:0> Ex25.print_first_and_last(sentence)
All
wait.
=> nil
irb(main):017:0> Ex25.print_first_and_last_sorted(sentence)
All
who
=> nil
irb(main):018:0> quit
PS C:\ruby\The-Catbox>
END

puts note
