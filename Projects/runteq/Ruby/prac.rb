class Human
    attr_accessor :name

    def initialize(name = 'カイジ')
        @name = name
    end

    def shout
        "ど゛う゛し゛て゛な゛ん゛だ゛よ゛お゛お゛お゛お゛お゛お゛お゛"
    end

    def beer
      "#{self.name}: キンキンに冷えてやがるっ・・・!!"
    end
end


kaiji = Human.new

p kaiji.beer