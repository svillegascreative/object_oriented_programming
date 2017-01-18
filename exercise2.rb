class Cat
  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

end


kevin = Cat.new("Kevin", "tuna", 4)
chuck_d = Cat.new("Chuck D", "cat chow", 12)
