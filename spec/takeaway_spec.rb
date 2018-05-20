require "takeaway"

describe Takeaway do

  subject(:takeaway) { described_class.new(menu, order) }
  let(:order) { double(:order) }
  let(:menu) { double(:menu, show: printed_menu) }
  let(:printed_menu) { "Pizza: £3.50\nFour Cheese Pizza: £4.50\nPepperoni Pizza: £4.00\nVegetarian Pizza: £4.50\nSpaghetti Carbonara: £4.50\nBolognese: £4.00\nLasagne: £5.00" }
  let(:items) { {Pizza: 2, Lasagne: 1} }

  it "shows a list of dishes with prices" do
    expect(takeaway.show_menu).to eq(printed_menu)
  end

  it "can select a number of available dishes" do
    expect(order).to receive(:add).twice
    takeaway.create_order(items)
  end

end
