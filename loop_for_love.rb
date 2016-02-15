infinity_time = false #since time is never infinite this is always false

while (!infinity_time) do
    puts "\nI love you!"

    puts "Have you been good? (Y/N)"
    is_good = gets.chomp.downcase
    if (is_good == "y") then
        puts "I love you!"
    else
        puts "I still love you!"
    end

    if (1 < 2) then
        puts "1 is less than 2 so I love you no matter what!"
    end
end
