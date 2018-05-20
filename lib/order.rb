class Order
  attr_reader :items

  def initialize
    @menu = Menu.new
    @items = {}
  end

  def add(dish, amount)
    fail "#{dish} is not on the menu" unless @menu.include?(dish)
    @items[dish] = amount
  end

  private

  attr_reader :menu
end
