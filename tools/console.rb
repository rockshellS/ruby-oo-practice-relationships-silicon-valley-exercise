require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

newstartup = Startup.new("companyname", "founder name", "domain.com")
newstartup1 = Startup.new("companyname1", "founder name1", "domain1.com")
newstartup2 = Startup.new("companyname2", "founder name2", "domain2.com")

abbie = VentureCapitalist.new("Abbie", 100)
richabbie = VentureCapitalist.new("Abbieisrich", 1000000001)
rachelle = VentureCapitalist.new("Rachelle", 100)
richrachelle = VentureCapitalist.new("Rachelleisrich", 5000000000)

fundingexample = FundingRound.new(newstartup, richabbie, "angel", 30000)
fundingagain = FundingRound.new(newstartup2, richrachelle, "Series A", 50000)
fundingfun = FundingRound.new(newstartup, abbie, "pre-seed", 50000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line