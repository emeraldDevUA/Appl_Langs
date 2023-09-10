# function def
def getWinner(player_choice, computer_choice)
  if player_choice == computer_choice
    "Нічия"
  elsif (player_choice == "КАМІНЬ" && computer_choice == "НОЖИЦІ") ||
        (player_choice == "НОЖИЦІ" && computer_choice == "ПАПІР") ||
        (player_choice == "ПАПІР" && computer_choice == "КАМІНЬ")
    "Ви виграли!"
  else
    "Ви програли!"
  end
end

# declaring valid args
valid_choices = ["КАМІНЬ", "НОЖИЦІ", "ПАПІР"]

# Argument quantity assessment
if ARGV.length != 2
  puts "Введіть два аргументи: [камінь/ножиці/папір] [камінь/ножиці/папір]"
  exit
end

# fetching args
player_choice = ARGV[0].upcase
computer_choice = ARGV[1].upcase 
# fetching args



#check if they are valid
unless valid_choices.include?(player_choice) && valid_choices.include?(computer_choice)
  puts "Введено недійсні аргументи. Виберіть один з: камінь, ножиці, папір."
  exit
end

# result
result = getWinner(player_choice, computer_choice)
print result