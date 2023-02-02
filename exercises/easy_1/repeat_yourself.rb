def repeat(str, int)
  int.times { puts str }
end

repeat('hello', 3)
repeat(' ', 5)
repeat('123@#$AbC', 100)
repeat('20', 1)
repeat('The quick brown dog jumped over the lazy red fox', 11)
repeat('I have 20 eggs!', 0)