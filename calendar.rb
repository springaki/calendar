require 'date'

class Calendar

  def initialize(year, month)
    @date = Date.new(year, month, 1)
    @week = Array.new(@date.next_month.prev_day.day){|index| index + 1 } + Array.new(7)
    @week.rotate!(- @date.cwday)
    #@week[@date.cwday] = @date.day
  end

  def to_s
    @week[0..6]
  end
end
