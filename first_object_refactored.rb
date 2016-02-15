class Kitten
    attr_writer :name
    attr_reader :name
    attr_accessor :fav_food
    def meow
        return "MEEEEEEooooOOOOOW!"
    end
end

my_harley = Kitten.new
my_harley.name = "Harley"
my_harley.fav_food = "cheese"
puts "#{my_harley.name} says #{my_harley.meow} for #{my_harley.fav_food}"

my_latte = Kitten.new
my_latte.name = "Latte"
my_latte.fav_food = "chicken"
puts "#{my_latte.name} says #{my_latte.meow} for #{my_latte.fav_food}"
