class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  ##instance methods
  def recruit_follower(follower, initiation_date)
    BloodOath.new(initiation_date, self, follower)
  end

  def my_oaths
    BloodOath.all.select do |oath|
      oath.cult == self
    end
  end

  def cult_population
    self.my_oaths.length
  end

  def average_age
    total_age = 0
    self.my_oaths.each do |oath|
      total_age += oath.follower.age
    end
    total_age/self.cult_population
  end

  def my_followers_mottos
    self.my_oaths.each do |oath|
      puts oath.follower.life_motto
    end
  end

  ##class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founding_year == year
    end
  end

  def self.number_of_followers
    hash = {}
    BloodOath.all.each do |oath|
      if hash[oath.cult]
        hash[oath.cult] += 1
      else
        hash[oath.cult] = 1
      end
    end
    hash
  end

  def self.least_popular
    count = Float::INFINITY
    least_popular = nil
    self.number_of_followers.each do |cult, followers|
      if followers < count
        count = followers
        least_popular = cult
      end
    end
    least_popular
  end

  def self.cult_locations
    hash = {}
    self.all.each do |cult|
      if hash[cult.location]
        hash[cult.location] += 1
      else
        hash[cult.location] = 1
      end
    end
    hash
  end

  def self.most_common_location
    count = 0
    most_common_location = nil
    self.cult_locations.each do |location, number|
      if number > count
        count = number
        most_common_location = location
      end
    end
    most_common_location
  end

end
