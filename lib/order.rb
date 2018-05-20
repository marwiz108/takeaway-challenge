class Order
  attr_reader :items

  def initialize
    @menu = Menu.new
    @items = {}
  end

  def add(dish, amount)
    @items[dish] = amount
  end

  private

  attr_reader :menu
end
