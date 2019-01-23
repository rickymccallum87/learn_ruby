class Timer
  attr_accessor :seconds

  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def seconds= seconds
    while seconds / 3600 > 0
      seconds -= 3600
      @hours += 1
    end
    while seconds / 60 > 0
      seconds -= 60
      @minutes += 1
    end
    @seconds = seconds
  end

  def time_string
    @hours.to_s.rjust(2, '0') + ':' +
    @minutes.to_s.rjust(2, '0') + ':' +
    @seconds.to_s.rjust(2, '0')
  end

end
