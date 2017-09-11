class Robot
  attr_reader :name

  def initialize
    
    letters = Array('A'..'Z')
    name = ''
    puts letters.sample
    2.times do
      name += letters.sample
    end
    number = rand (100..1000)
    @name = name+number.to_s
  end

  def reset
    letters = Array('A'..'Z')
    name = ''
    puts letters.sample
    2.times do
      name += letters.sample
    end
    number = rand (100..1000)
    @name = name+number.to_s
    return @name
  end
end
