def action(command)
	puts "Hit '+' to add"
	puts "Hit '-' to subtract"
	puts "Hit '*' to multiply"
	puts "Hit '/' to divide"
	puts "Hit '2' to square"
	puts "Type STOP to exit the program"
end

def second_number(string)
	puts "Enter the second number:"
end

puts "Welcome to the calculator"

puts "Enter the first number:"
num1 = gets.chomp

loop do
	action('command')
	function = gets.chomp
	if function == '+'
		second_number('string')
		num2 = gets.chomp
		result = num1.to_i + num2.to_i
	elsif function == '-'
		second_number('string')
		num2 = gets.chomp
		result = num1.to_i - num2.to_i
	elsif function == '*'
		second_number('string')
		num2 = gets.chomp
		result = num1.to_i * num2.to_i
	elsif function == '/'
		second_number('string')
		num2 = gets.chomp
		result = num1.to_f / num2.to_f
	elsif function == '2'
		result = num1.to_i * num1.to_i
	elsif function == 'STOP'
		break
	else
		puts "Sorry I didn't understand that."
	end
	puts "====> " + result.to_s
	num1 = result
end


		

