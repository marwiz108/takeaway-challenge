class Takeaway

  attr_reader :menu

  def initialize(menu = Menu.new)
    @menu = menu
  end

  def show_menu
    puts (@menu.items).map{ |dish, price| "#{dish}: £#{'%.2f' % price}" }.join("\n")
  end

end
