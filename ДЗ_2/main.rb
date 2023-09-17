#to exclude extra symbols
def custom_print(val)
  arr = val.split(" ")
  arr.each do |iterable|
    unless "(@)".include? iterable
      print(iterable);print " "
    end
  end
end
expr = gets
result = ""
stack = []
aux_stack = []
array = expr.split(" ")
operators = %w[+ - * /]
storage = []
integer = 0
array.each do |item|
  # block to process braces
  if(item.include?"(") || (!aux_stack.length == 0)
    new_item = array[integer+1]+ " " + array[integer+3] +" "+array[integer+2]
    array[integer+1] = "@"
    array[integer+2] = "@"
    array[integer+3] = "@"
    storage.push(new_item)
    end
  #puts item
  integer+=1

    if !operators.include?(item)
      result += item
      result += " "
    else
      stack.push(item)
  end
  end
#output
while (val2 = storage.pop) do custom_print(val2) end
custom_print result
while (val = stack.pop) do custom_print(val) end

