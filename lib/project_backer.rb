require 'pry'

class ProjectBacker

    @@all = []

    attr_accessor :project, :backer

    def initialize(project, backer)
        @project = project
        @backer = backer
        save
    end

    def self.all
        @@all
    end

    def save
        ProjectBacker.all << self
    end




    


end