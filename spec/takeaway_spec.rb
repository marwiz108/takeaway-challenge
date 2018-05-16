require "takeaway"

describe Takeaway do

  subject(:takeaway) { described_class.new(menu) }
  let(:menu) { double :menu, show: printed_menu }
  let(:printed_menu) { "Pizza: £3.50" }

  it("shows a list of dished with prices") do
    expect(takeaway.show_menu).to eq(printed_menu)
  end
end
