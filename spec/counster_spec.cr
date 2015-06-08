require "./spec_helper"

describe "Counter" do
  describe "when use default args" do
    it "should return zero first" do
      counter = TypableMap::Counter.new
      counter.next.should eq(0)
    end

    it "should return zero after count one hundred" do
      counter = TypableMap::Counter.new
      100.times do
        counter.next
      end
      counter.next.should eq(0)
    end
  end

  describe "when use args" do
    it "should retern zero first" do
      counter = TypableMap::Counter.new(3000)
      counter.next.should eq(0)
    end

    it "should retern zero after count args val" do
      max_count = 3000
      counter = TypableMap::Counter.new(max_count)
      max_count.times do
        counter.next
      end
      counter.next.should eq(0)
    end
  end
end
