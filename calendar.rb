require 'date'

class Calendar

  def initialize(year, month)
    @first_date = Date.new(year, month, 1)
    @last_date = Date.new(year, month, -1)
    @week = Array.new(@first_date.next_month.prev_day.day){|index| index + 1 } + Array.new(7)
    @week.rotate!(- @first_date.cwday)
  end

  def weeks()
    last_week_in_month = @last_date.cweek - @first_date.cweek + 1
    (1..last_week_in_month).inject([]) { |weeks, i| weeks << week(i) }
  end

  def week(n)
    return nil if n == 0
    @week[(n-1)*7,7]
  end

  def header
    days = "Su Mo Tu We Th Fr Sa"
    month = @first_date.strftime('%B %Y').center(days.size)
    return month, days
  end

  def to_s
    str = header.join("\n").to_s + "\n"
    weeks.inject(str) { |s, e|
      e.each { |e1| 
        s << (e1.nil? ? "  " : e1.to_s.rjust(2))
        s << " "
      }
      s << "\n"
    }

  end

end
