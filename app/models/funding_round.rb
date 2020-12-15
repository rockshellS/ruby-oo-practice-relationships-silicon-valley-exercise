class FundingRound
    attr_accessor :type, :investment
    attr_reader :startup, :venturecapitalist


    @@all = []

    def initialize(startup, venturecapitalist, type, investment)
        @startup = startup
        @venturecapitalist = venturecapitalist
        @type = type
        @investment = investment.to_f
        @@all << self
    end



    def self.all
        @@all
    end








end
