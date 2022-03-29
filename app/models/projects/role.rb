module Projects
  class Role
    attr_accessor :activitiesData
    attr_accessor :rolesData

    def initialize(activitiesData, rolesData)
     @activitiesData = activitiesData
     @rolesData = rolesData
    end

  end

  class Developer < Role
    attr_accessor :Coding

    hourly_rate = 120

    #A list of activities
    def initialize(activitiesData, rolesData)
      super
      
      @Coding = 4 #Activity.new(hourly_rate, 5)
    end
  end
end