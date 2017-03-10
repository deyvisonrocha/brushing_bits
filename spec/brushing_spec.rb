require_relative '../lib/brushing.rb'

RSpec.describe Brushing, "Escovando bit's" do
  context "#1 testing with example of test" do
    it "A: 1 | B: 4 | Expect: 5" do
      brushing = Brushing.new
      brushing.extract(1,4)
      expect(brushing.total).to eq 5
    end
  end

  context "#2 when number B > A" do
    it "A: 5 | B: 4 | Expect: The B number must be greater than the A number" do
      brushing = Brushing.new
      brushing.extract(5,4)
      expect(brushing.error_msg).to eq "The B number must be greater than the A number"
    end
  end

  context "#3 normal scene" do
    it "A: 3 | B: 7 | Expect: 10" do
      brushing = Brushing.new
      brushing.extract(3,7)
      expect(brushing.total).to eq 10
    end
    it "A: 1 | B: 10 | Expect: 17" do
      brushing = Brushing.new
      brushing.extract(1,10)
      expect(brushing.total).to eq 17
    end
    it "A: 99 | B: 3500 | Expect: 19759" do
      brushing = Brushing.new
      brushing.extract(99,3500)
      expect(brushing.total).to eq 19759
    end
    it "A: 3 | B: 50 | Expect: 134" do
      brushing = Brushing.new
      brushing.extract(3,50)
      expect(brushing.total).to eq 134
    end
    it "A: 1 | B: 1000 | Expect: 64613" do
      brushing = Brushing.new
      brushing.extract(1,10000)
      expect(brushing.total).to eq 64613
    end
  end
end
