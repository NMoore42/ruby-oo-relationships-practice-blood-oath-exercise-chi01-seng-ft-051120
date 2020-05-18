class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def cults
    follower_blood_oaths = BloodOath.all.select do |blood_oath_instance|
      blood_oath_instance.follower == self
    end
    follower_blood_oaths.map {|blood_oath_instance| blood_oath_instance.cult}
  end

  def join_cult(cult_instance)
    BloodOath.new(self, cult_instance, 2020)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    #takes an Integer argument that is an age and returns an Array of followers who are the given age or older

    self.all.select {|follower_instance| follower_instance.age >= age }
  end

end
