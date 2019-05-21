require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

aaron = Follower.new("Aaron", 35, "coding is fun")
emi = Follower.new("Emi", 30, "i love cats")
james = Follower.new("James", 20, "whatever")
duncan = Follower.new("Duncan", 29, "i love life")
jennifer = Follower.new("Jennifer", 18, "not today")
chris = Follower.new("Chris", 40, "2kool4skool")
kevin = Follower.new("Kevin", 10, "what is life")
christy = Follower.new("Christy", 55, "tomato to-mato")
mary = Follower.new("Mary", 23, "weirrrrd")
kaitlyn = Follower.new("Kaitlyn", 12, "okurrrrr")
forrest = Follower.new("Forrest", 60, "life is a box of chocolates")
caroline = Follower.new("Caroline", 28, "if you know you know")


the_peoples_temple = Cult.new("The People's Temple", "Indiana", "1955", "Drink the Kool-aid")
sullivanians = Cult.new("Sullivanians", "New York", "1957", "Whatever")
children_of_god = Cult.new("Children of God", "California", "1968", "Love")
goop = Cult.new("Goop", "New York", "2001", "wellness")

blood_oath1 = BloodOath.new(2001, the_peoples_temple, aaron)
blood_oath2 = BloodOath.new(2018, children_of_god, emi)
blood_oath3 = BloodOath.new(2019, children_of_god, aaron)
blood_oath4 = BloodOath.new(1998, sullivanians, emi)
blood_oath5 = BloodOath.new(2019, sullivanians, aaron)
blood_oath6 = BloodOath.new(1999, sullivanians, kaitlyn)
blood_oath7 = BloodOath.new(2001, children_of_god, james)
blood_oath8 = BloodOath.new(1978, the_peoples_temple, kaitlyn)
blood_oath9 = BloodOath.new(2002, children_of_god, mary)
blood_oath10 = BloodOath.new(1992, sullivanians, christy)
blood_oath11 = BloodOath.new(2005, the_peoples_temple, kevin)
blood_oath12 = BloodOath.new(1985, children_of_god, duncan)
blood_oath13 = BloodOath.new(1991, sullivanians, jennifer)
blood_oath14 = BloodOath.new(1776, sullivanians, chris)
blood_oath15 = BloodOath.new(1500, children_of_god, forrest)
blood_oath16 = BloodOath.new(1980, the_peoples_temple, aaron)
blood_oath17 = BloodOath.new(1879, sullivanians, chris)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
