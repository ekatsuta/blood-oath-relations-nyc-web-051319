class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  ##instance methods

  def my_oaths
    BloodOath.all.select do |oath|
      oath.follower == self
    end
  end

  def cults
    self.my_oaths.map do |oath|
      oath.cult
    end
  end

  def join_cult(cult, initiation_date)
    if self.age < cult.minimum_age
      puts "Sorry, you are too young to join this cult."
    else
      BloodOath.new(initiation_date, cult, self)
    end
  end

  def my_cult_slogans
    self.cults.each do |oath|
      puts oath.cult.slogan
    end
  end

  def fellow_cult_members
    followers = []
    BloodOath.all.each do |oath|
      if self.cults.include?(oath.cult) && oath.follower != self
        followers << oath.follower
      end
    end
    followers.uniq
  end

  ##class methods
  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age >= age
    end
  end

  def self.follower_num_cults
    hash = {}
    BloodOath.all.each do |oath|
      if hash[oath.follower]
        hash[oath.follower] += 1
      else
        hash[oath.follower] = 1
      end
    end
    hash
  end

  def self.most_active
    count = 0
    most_active = nil
    self.follower_num_cults.each do |follower, num_cults|
      if num_cults > count
        count = num_cults
        most_active = follower
      end
    end
    most_active
  end

  def self.top_ten
    self.follower_num_cults.sort_by do |follower, num_cults|
      - num_cults
    end[0..9]
  end


end
