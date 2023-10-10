arr = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000, Float::INFINITY]
str = %w[I IV V IX X XL L XC C CD D CM M -]

print "Enter a number for conversion:"
x = gets.chomp.to_i

print "\nThe result looks this way: "
while x != 0
  tmp = 0
  arr.each_with_index do |value, i|
    if x - value > 0
      tmp = i
    else
      if x - arr[tmp + 1] == 0
        print str[tmp + 1]
        x -= arr[tmp + 1]
        break
      end
      x -= arr[tmp]
      print str[tmp]
      break
    end
  end
end
print "\n"