require "menu"

describe Menu do
  subject(:menu) { described_class.new(dishes) }

  let(:dishes) do
    {
      Pizza: 3.50,
      Lasagne: 5
    }
  end

  let(:printed_menu) { "Pizza: £3.50\nLasagne: £5.00" }

  it("has some dishes with prices") do
    expect(menu.dishes).to eq(dishes)
  end

  it("shows a list of dishes with prices") do
    expect(menu.show).to eq(printed_menu)
  end

end
