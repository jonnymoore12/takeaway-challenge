require 'order'

describe Order do

  let(:good_order) { [{"Satay" => 1, "Cendol" => 2 }, 21.97] }
  let(:bad_order) { [{"Satay" => 1, "Cendol" => 2 }, 22.00] }

  describe "#select" do
    it 'raises an error when we input the incorrect sum' do
      expect{subject.select(bad_order)}.to raise_error("Bad order! Check your maths.")
    end
    it 'confirms a correct order has been placed' do
      expect(subject.select(good_order)).to eq "Good job! Order success."
    end
  end

end