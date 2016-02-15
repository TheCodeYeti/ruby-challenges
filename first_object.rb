class Kitten
    def set_name= (kitten_name)
        @name = kitten_name
    end
    def get_name
        return @name
    end
    def set_fav_food= (fav_food)
        @fav_food = fav_food
    end
    def get_fav_food
        return @fav_food
    end
    def meow
        return "MEEEEEEooooOOOOOW!"
    end
end

my_harley = Kitten.new
my_harley.set_name= "Harley"
my_harley.set_fav_food= "cheese"
puts "#{my_harley.get_name} says #{my_harley.meow} for #{my_harley.get_fav_food}"

my_latte = Kitten.new
my_latte.set_name= "Latte"
my_latte.set_fav_food= "chicken"
puts "#{my_latte.get_name} says #{my_latte.meow} for #{my_latte.get_fav_food}"
