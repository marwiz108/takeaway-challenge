class Takeaway

  attr_reader :menu

  def initialize(menu = Menu.new)
    @menu = menu
  end

  def show_menu
    @menu.items
  end

end


# .map{ |dish, price| "#{dish}: £#{'%.2f' % price}" }.join("\n") - for show_menu
