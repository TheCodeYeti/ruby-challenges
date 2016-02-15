puts "Give me a number:"
user_number = gets.to_i
final_number = user_number + 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= user_number
puts "The final number is #{final_number}!"
