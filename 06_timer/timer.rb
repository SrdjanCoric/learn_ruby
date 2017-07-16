class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time(@seconds)
  end

  def time(time)
    hours = time / 3600
    minutes = (time % 3600) / 60
    seconds = time % 60

    timeArr = [hours, minutes, seconds]
        
    timeArr.map! { |entry| entry.to_s.length == 1 ? "0#{entry}" : entry }
        
    timeString = "#{timeArr[0]}:#{timeArr[1]}:#{timeArr[2]}"
  end
end
