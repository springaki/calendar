require 'date'

class Calendar

  def initialize(year, month)
    @date = Date.new(year, month, 1)
    @week = Array.new(@date.next_month.prev_day.day){|index| index + 1 } + Array.new(7)
    @week.rotate!(- @date.cwday)
    #@week[@date.cwday] = @date.day
  end

  def week(n)
    @week[(n-1)*7,7]
  end
end
