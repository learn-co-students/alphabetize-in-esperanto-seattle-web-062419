def alphabetize(arr)
  arr.each do |string|
    string.tr!(
      "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz", 
      "abcdefghijklmnopqrstuvwxyz{|")
  end
  new_arr = arr.sort
  new_arr.each do |string|
    string.tr!(
      "abcdefghijklmnopqrstuvwxyz{|",
      "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
      )
  end
end