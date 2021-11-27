class Dog
  attr_accessor :name

  def initialize(name = "Rex")
    @name = name 
  end

  def breed
    "German Shepherd"
  end

  def woof
    'Woof!'
  end
end