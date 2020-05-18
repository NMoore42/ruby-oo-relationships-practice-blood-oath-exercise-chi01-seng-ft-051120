require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

##### CULT INSTANCES #####
jonestown = Cult.new("People's Temple Agg Project", "Jonestown", "Drink the Flavor-Aid", 1968)
flat_earth = Cult.new("Youtube side projects", "Purely Digital", "We are not well-roundded.", 1202)
anti_vax = Cult.new("G. Paltrow Presents Goop", "CA", "Don't confuse you're degree with my Google search!", 2005)


##### FOLLOWER INSTANCES #####
nick = Follower.new("Nick", 33, "More nachoes, please.")
duke = Follower.new("Duke", 34, "Sure hope I don't fall prey to any cults.")
louis = Follower.new("Louis", 33, "I just don't want to be alone.")
patsy = Follower.new("Patsy", 44, "Can my cats join?")

##### BLOODOATH INSTANCES #####
blood_oath_one = BloodOath.new(nick, jonestown, 1999)
blood_oath_two = BloodOath.new(duke, flat_earth, 1987)
blood_oath_three = BloodOath.new(duke, jonestown, 2001)
blood_oath_four = BloodOath.new(louis, jonestown, 2019)
blood_oath_five = BloodOath.new(louis, flat_earth, 2019)
blood_oath_six = BloodOath.new(louis, anti_vax, 2019)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
