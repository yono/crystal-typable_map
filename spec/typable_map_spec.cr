require "./spec_helper"

describe "TypableMap" do
  describe "when use default args" do
    it "should initialize" do
      typable_map = TypableMap::TypableMap.new
      uniq_str = typable_map.push("test")
      uniq_str.should_not be_nil
    end
  end

  describe "when push object" do
    it "should generate uniq string" do
      typable_map = TypableMap::TypableMap.new
      inserted_obj = "test"
      uniq_str = typable_map.push(inserted_obj)
      uniq_str.should_not eq("aaaa")
    end
  end

  describe "when pull object" do
    it "should retern the object" do
      typable_map = TypableMap::TypableMap.new
      inserted_obj = 3
      uniq_str = typable_map.push(inserted_obj)

      fetched_obj = typable_map.get(uniq_str)
      fetched_obj.should eq(inserted_obj)
    end
  end

  describe "when push a object many times" do
    it "should generate uniq strings" do
      typable_map = TypableMap::TypableMap.new
      before_str = ""
      1000.times do
        inserted_obj = 1
        uniq_str = typable_map.push(inserted_obj)
        uniq_str.should_not eq(before_str)
        before_str = uniq_str
      end
    end
  end
end
