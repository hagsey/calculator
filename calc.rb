def print_action(command)
  puts "Hit '+' to add"
  puts "Hit '-' to subtract"
  puts "Hit '*' to multiply"
  puts "Hit '/' to divide"
  puts "Hit '2' to square"
  puts "Type STOP to exit the program"
end

def print_second_number(string)
  puts "Enter the second number:"
end

puts "Welcome to the calculator"

puts "Enter the first number:"
num1 = gets.chomp

# THIS WAS MY ORIGINAL SOLUTION -EH
# loop do
#   print_action('command')
#   function = gets.chomp
#   if function == '+'
#     print_second_number('string')
#     num2 = gets.chomp
#     result = num1.to_i + num2.to_i
#   elsif function == '-'
#     print_second_number('string')
#     num2 = gets.chomp
#     result = num1.to_i - num2.to_i
#   elsif function == '*'
#     print_second_number('string')
#     num2 = gets.chomp
#     result = num1.to_i * num2.to_i
#   elsif function == '/'
#     print_second_number('string')
#     num2 = gets.chomp
#     result = num1.to_f / num2.to_f
#   elsif function == '2'
#     result = num1.to_i * num1.to_i
#   elsif function == 'STOP'
#     break
#   else
#     puts "Sorry I didn't understand that."
#     result = num1
#   end
#   puts "====> " + result.to_s
#   num1 = result
# end

loop do
  print_action('command')
  function = gets.chomp
  if %w(+ - * /).include?(function)
    print_second_number('string')
    num2 = gets.chomp
  end

  case function
  when '+'
    result = num1.to_i + num2.to_i
  when '-'
    result = num1.to_i - num2.to_i
  when '*'
    result = num1.to_i * num2.to_i
  when '/'
    result = num1.to_f / num2.to_f
  when '2'
    result = num1.to_i * num1.to_i
  when 'STOP'
    break
  else
    puts "Sorry I didn't understand that."
    result = num1
  end
  puts "====> " + result.to_s
  num1 = result
end

