module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name, speed)
    @name = name
    @speed = speed
  end

  def run
    time = 10/@speed 
    sleep time
    puts "I ran 10 meters in #{time} seconds."
  end
end

class Cricket
  include Action

  attr_reader :name
  
  def initialize(name, speed)
    @name = name
    @speed = speed
  end

  def run
    time = 10/@speed 
    sleep time
    puts "I ran 10 meters in #{time} seconds."
  end

  def chirp
    times = rand(90) + 10
    times.times do |i|
      puts "#{i}: Chirp… chirp!!"
    end
  end
end