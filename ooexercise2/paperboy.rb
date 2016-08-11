class Paperboy
  attr_reader :earnings
  attr_accessor :experience
  def initialize(name,side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
  end

  def quota
    return 50 + @experience/2
  end

  def deliver(st, en)
    earn = 0
    exp = 0
    quo = quota

    (st..en).each do |x|
      if(x%2==0) && (@side == "even")
        exp += 1
        earn += 0.25 if exp <= quo
        earn += 0.5 if exp > quo
      elsif(x%2==1) && (@side == "odd")
        exp += 1
        earn += 0.25 if exp <= quo
        earn += 0.5 if exp > quo
      end
    end

    @earnings += earn
    @experience += exp
    @earnings -= 2 if exp < quo

    return earn
  end

  def report
    puts "I'm #{@name}, i've delivered #{@experience} papers and i've earned $#{earnings} so far!"
  end

end

clark = Paperboy.new("clark","even")
clark.quota
clark.deliver(101, 220)
puts clark.earnings
clark.report

clark.quota
clark.deliver(1,150)
puts clark.earnings
clark.report
