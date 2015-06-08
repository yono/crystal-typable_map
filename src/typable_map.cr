require "./typable_map/*"

module TypableMap
  class TypableMap
    Roman = %w(
a i u e o ka ki ku ke ko sa si su se so
ta ti tu te to na ni nu ne no ha hi fu he ho
ma mi mu me mo ya yu yo ra ri ru re ro
wa wo
ga gi gu ge go za ji zu ze zo da de do
ba bi bu be bo pa pi pu pe po
    )

    def initialize
      @seq = Roman.dup
      @seq.shuffle!
      @counter = Counter.new
      @hash = Hash(String, Entry).new
    end

    def [](id)
      @hash[id].obj
    end

    def push(obj)
      id = generate(@counter.next)
      entry = Entry.new(obj)
      @hash[id] = entry
      id
    end

    def generate(n)
      ret = [] of String
      begin
        n, r = n.divmod(@seq.size)
        ret << @seq[r]
      end while n > 0
      ret.reverse.join
    end

  end
end
