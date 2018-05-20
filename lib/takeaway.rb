class Takeaway

  def initialize(menu)
    @menu = menu
    # @order = order
  end

  def show_menu
    @menu.show
  end

  private

  attr_reader :menu, :order

end
