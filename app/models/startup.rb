class Startup
    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

def pivot(domain, name)
self.domain == domain
self.name == name
end

  def self.all
    @@all
   end


  def self.find_by_founder(founder_name)
    self.all.find {|s| s.founder == founder_name}
  end

   def self.domains
     self.all.collect {|s| s.domain}
   end

   def sign_contract(venturecapitalist, type, investment)
    FundingRound.new(self, venturecapitalist, type, investment.to_f)
   end 



#we created this one so we could use in methods below
   def funding_rounds_startup
    FundingRound.all.select {|fr| fr.startup == self}
   end 

   def num_funding_rounds
    self.funding_rounds_startup.count
   end 

   def total_funds
    self.funding_rounds_startup.collect {|fr| fr.investment}.sum
   end  

   def investors
    self.funding_rounds_startup.collect {|fr| fr.venturecapitalist}.uniq
   end 


   def big_investors
    self.investors.select {|vc| 
    VentureCapitalist.tres_commas_club.include?(vc)}


        # self.investors.select {|vc| vc.total_worth > 1000000000}
    
   end 







end
