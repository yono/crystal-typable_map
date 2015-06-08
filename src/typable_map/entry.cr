module TypableMap
  class Entry(T)
    def initialize(obj : T)
      @obj = obj
    end

    def obj
      @obj
    end
  end
end
