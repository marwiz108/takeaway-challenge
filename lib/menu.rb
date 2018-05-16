class Menu

  attr_reader :items

  def initialize
    @items = { "Pizza" => 3.50, "Four Cheese Pizza" => 4.50,
          "Pepperoni Pizza" => 4, "Vegetarian Pizza" => 4.50,
          "Spaghetti Carbonara" => 4.50, "Bolognese" => 4, "Lasagne" => 5 }
  end
end
