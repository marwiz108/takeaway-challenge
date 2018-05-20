require "menu"

describe Menu do
  subject(:menu) { described_class.new }

  let(:dishes) do
    {
      "Pizza" => 3.50,
      "Four Cheese Pizza" => 4.50,
      "Pepperoni Pizza" => 4,
      "Vegetarian Pizza" => 4.50,
      "Spaghetti Carbonara" => 4.50,
      "Bolognese" => 4,
      "Lasagne" => 5
    }
  end

  let(:printed_menu) { "Pizza: £3.50\nFour Cheese Pizza: £4.50\nPepperoni Pizza: £4.00\nVegetarian Pizza: £4.50\nSpaghetti Carbonara: £4.50\nBolognese: £4.00\nLasagne: £5.00" }

  it "has some dishes with prices" do
    expect(menu.dishes).to eq(dishes)
  end

  it "shows a list of dishes with prices" do
    expect(menu.show).to eq(printed_menu)
  end

end
