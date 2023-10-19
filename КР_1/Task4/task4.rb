
string = gets

if string!=nil
  array = string.split" "
    array.each {|item|
      print item.to_s[0].capitalize
    }

end