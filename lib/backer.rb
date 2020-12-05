class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        Backer.all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        a = ProjectBacker.all.select { |pb| pb.backer == self}
        a.map {|i| i.project}
    end



end
