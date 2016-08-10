class Cat
  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    time = @meal_time > 12 ? "#{@meal_time - 12} PM" : "#{@meal_time} AM"
    return time
  end

  def meow
    puts "My name is #{@name} and i eat #{@preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("john", "catmeat", 20)
cat2 = Cat.new("wax", "catveg", 10)
cat1.meow
cat2.meow
