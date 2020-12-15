class VentureCapitalist
   attr_accessor :name, :total_worth

   @@all = []

   def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self

   end

   def self.all
      @@all
     end

def self.tres_commas_club
    self.all.find_all {|v| v.total_worth > 1000000000}

end

def offer_contract(startup, type, investment)
   FundingRound.new(startup, self, type, investment)
end

def funding_rounds
   FundingRound.all.select {|fr| fr.venturecapitalist == self}
end

def portfolio
   funding_rounds.collect {|fr| fr.startup}.uniq
end 


def biggest_investment
   funding_rounds.max_by {|fr| fr.investment}
end 


def invested(domainstring)
   amount_invested = 0
   funding_rounds.collect do |fr|
       if fr.startup.domain == domainstring
           amount_invested += fr.investment
       end
   end  
   amount_invested
end 
end


   


end
