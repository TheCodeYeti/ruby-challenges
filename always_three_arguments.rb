def always_three(my_number)

    my_number = ((((my_number + 5) * 2) - 4) / 2 ) - my_number
    return my_number
end

puts "Give me a number:"
user_number = gets.to_i
my_number = always_three(user_number)
puts "Always #{my_number}!"
