class Robot
  attr_accessor :name
  $names = []
  def initialize(name = 'AB123')
    alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    @name = "#{alphabets[rand(0..25)]}#{alphabets[rand(0..25)]}#{rand(100..999)}"
    if $names.include? @name
      @name = "#{alphabets[rand(0..25)]}#{alphabets[rand(0..25)]}#{rand(100..999)}"
    else
      $names.push(@name)
    end
  end

  def reset
    alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    @name = "#{alphabets[rand(0..25)]}#{alphabets[rand(0..25)]}#{rand(100..999)}"
  end
end

r1 = Robot.new
p r1
r2 = Robot.new
p r2
