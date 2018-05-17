require "takeaway"

describe Takeaway do

  subject(:takeaway) { described_class.new(menu) }
  let(:menu) { double :menu, items: printed_menu }
  let(:printed_menu) { "Pizza: £3.50" }

  it("shows a list of dished with prices") do
    expect(takeaway.show_menu).to eq(printed_menu)
  end

  # it("can order a number of available dishes") do
  #   takeaway.order("Pepperoni Pizza", 1)
  #   expect(basket_summary).to eq("1x Pepperoni Pizza = £4.00")
  # end
end
