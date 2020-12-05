class Project

    @@all = []

    attr_accessor :title
    
    def initialize(title)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def save
        Project.all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        a = ProjectBacker.all.select { |pb| pb.project == self}
        a.map {|i| i.backer}

    end



end