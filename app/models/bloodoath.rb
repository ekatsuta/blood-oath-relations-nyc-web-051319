class BloodOath
  attr_accessor :cult, :follower, :initiation_date

  @@all = []

  def initialize(initiation_date, cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = initiation_date

    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    earliest_year = Float::INFINITY
    follower = nil
    self.all.each do |oath|
      if oath.initiation_date < earliest_year
        earliest_year = oath.initiation_date
        follower = oath.follower
      end
    end
    follower 
  end

end
