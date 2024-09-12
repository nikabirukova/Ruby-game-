# Варіанти гри
CHOICES = ["камінь", "ножиці", "папір"]

# Метод для отримання вибору комп'ютера
def computer_choice
  CHOICES.sample
end

# Метод для визначення переможця
def determine_winner(player, computer)
  if player == computer
    "Нічия!"
  elsif (player == "камінь" && computer == "ножиці") ||
        (player == "ножиці" && computer == "папір") ||
        (player == "папір" && computer == "камінь")
    "Ви перемогли!"
  else
    "Комп'ютер переміг!"
  end
end

# Гра
puts "Ласкаво просимо до гри 'Камінь, ножиці, папір'!"
puts "Введіть ваш вибір: камінь, ножиці або папір."

# Отримуємо вибір гравця
player_choice = gets.chomp.downcase

# Перевірка на коректність вибору
if CHOICES.include?(player_choice)
  computer = computer_choice
  puts "Комп'ютер вибрав: #{computer}"

  # Визначення переможця
  result = determine_winner(player_choice, computer)
  puts result
else
  puts "Некоректне введення! Будь ласка, оберіть: камінь, ножиці або папір."
end
