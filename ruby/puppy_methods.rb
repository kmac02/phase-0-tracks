class Puppy
    def initalize
        puts "initalizing a new puppy instance"
    end
    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end
    def speak(x)
        x.times do puts "Woof!"
    end
    def roll_over
        puts "*rolls over*"
    end
    def dog_years(i)
        years = (i * 7)
        puts "#{years}"
    end
    def lay_down
        puts "*lays down*"
    end
end
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(4)
puppy.roll_over
puppy.dog_years(3)
puppy.lay_down
end
# Begin Bears class
class Bears
    def initialize
        puts "initalizing a new bears instance"
    end
    def growl
        puts "GRROOWWWLLLLLLL!!!"
    end
    def sleep
        puts "*sleeping*"
    end
end
# 50 instance of class with iteration in an array
array_bears = []
50.times do
  bears = Bears.new
  array_bears << bears
end

array_bears.each do |x|
    x.growl
    x.sleep
end