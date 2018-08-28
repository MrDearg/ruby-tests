class Gigasecond
  def self.from(time)
    t = time + 10 ** 9
  end
end

Gigasecond.from(Time.utc(1982, 10, 21, 20, 0, 0))

module BookKeeping
  VERSION = 6
end