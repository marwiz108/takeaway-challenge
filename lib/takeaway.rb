class Takeaway

  def initialize(menu, order)
    @menu = menu
    @order = order
  end

  def show_menu
    @menu.show
  end

  def create_order(items)
    items.each do |dish, amount|
      order.add(dish, amount)
    end
  end

  private

  attr_reader :menu, :order

end
