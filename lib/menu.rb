class Menu

  attr_reader :dishes

  def initialize
    @dishes = { "Pizza" => 3.50, "Four Cheese Pizza" => 4.50,
          "Pepperoni Pizza" => 4, "Vegetarian Pizza" => 4.50,
          "Spaghetti Carbonara" => 4.50, "Bolognese" => 4, "Lasagne" => 5 }
  end

  def show
    dishes.map{ |dish, price| "#{dish}: £#{'%.2f' % price}" }.join("\n")
  end
end

# # { "Pizza" => 3.50, "Four Cheese Pizza" => 4.50,
#       "Pepperoni Pizza" => 4, "Vegetarian Pizza" => 4.50,
#       "Spaghetti Carbonara" => 4.50, "Bolognese" => 4, "Lasagne" => 5 }
