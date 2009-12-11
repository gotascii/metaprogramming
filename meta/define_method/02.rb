class BoozeRatings
  def self.rate(brand, rating)
    define_method(brand) do
      puts "#{brand} gets a #{rating}!"
    end
  end

  rate :jack, 5
  rate :jim, 4
end

b = BoozeRatings.new
b.jack
b.jim