class Cult
  attr_reader :name, :location, :slogan, :founding_year

  @@all = []

  def initialize(name, location, slogan, founding_year)
    @name = name
    @location = location
    @slogan = slogan
    @founding_year = founding_year

    @@all << self
  end

  def recruit_follower(follower_instance)
    BloodOath.new(follower_instance, self, 2020)
  end

  def followers
    cult_blood_oathes = BloodOath.all.select do |blood_oath_instance|
      blood_oath_instance.cult == self
    end
    cult_blood_oathes.map {|blood_oath_instance| blood_oath_instance.follower}
  end

  def cult_population
    followers.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find {|cult_instance| cult_instance.name == cult_name}
  end

  def self.find_by_location(cult_location)
    self.all.select {|cult_instance| cult_instance.location == cult_location}
  end

  def self.find_by_founding_year(year)
    #Return an array of the cult instances founded in that year.
    self.all.select {|cult_instance| cult_instance.founding_year == year}
  end

end
