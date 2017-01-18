class Cat
  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time == 0
      "12 AM"
    elsif @meal_time < 12
      "#{@meal_time} AM"
    else @meal_time >= 12
      "#{@meal_time - 12} PM"
    end
  end

end


kevin = Cat.new("Kevin", "tuna", 17)
chuck_d = Cat.new("Chuck D", "cat chow", 12)

# test
puts kevin.eats_at
