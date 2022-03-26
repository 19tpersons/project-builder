module Roles
  class Role
    attr_accessor :project
    attr_accessor :activities
    attr_accessor :roles

    def initialize(project)
     # @project = project
     # @activities = activities
     # @roles = roles
    end

  end

  class Developer < Role
    hourly_rate = 120

    #A list of activities
    #Coding = Activity.new(hourly_rate, 5)
  end
end