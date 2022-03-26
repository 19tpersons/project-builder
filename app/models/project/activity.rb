module Role 
  class Activity
    attr_accessor :hours, :rate

    def initialize(hours, rate)
      @hours = hours
      @rate = rate
    end

    def weekly_cost
      hours * rate
    end
  end
end