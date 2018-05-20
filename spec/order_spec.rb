require "order"

describe Order do
  subject(:order) { described_class.new }
  let(:items) { {"Pizza" => 2, "Lasagne" => 1} }

  it "adds items from the menu to the order" do
    order.add("Pizza", 2)
    order.add("Lasagne", 1)
    expect(order.items).to eq(items)
  end
end
