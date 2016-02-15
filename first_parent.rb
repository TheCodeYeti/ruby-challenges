class FamilyMember
    def set_name= (name)
        @name = name
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
end

class Kitten < FamilyMember
    def meow
        return "MEEEEEEooooOOOOOW!"
    end
end

class Gremmelin < FamilyMember
    def roar
        return "RAWRrrr!"
    end
end

class Yeti < FamilyMember
    def grunt
        return "agwa!"
    end
end

harley = Kitten.new
harley.set_name= "Harley"
harley.set_fav_food= "cheese"
puts "#{harley.get_name} says #{harley.meow} for #{harley.get_fav_food}"

latte = Kitten.new
latte.set_name= "Latte"
latte.set_fav_food= "chicken"
puts "#{latte.get_name} says #{latte.meow} for #{latte.get_fav_food}"

wawa = Gremmelin.new
wawa.set_name= "Wawa"
wawa.set_fav_food= "Mangoes"
puts "#{wawa.get_name} says #{wawa.roar} for #{wawa.get_fav_food}"

sherpa = Yeti.new
sherpa.set_name= "Sherpa"
sherpa.set_fav_food= "Lobster"
puts "#{sherpa.get_name} says #{sherpa.grunt} for #{sherpa.get_fav_food}"

puts harley.inspect
puts latte.inspect
puts wawa.inspect
puts sherpa.inspect
