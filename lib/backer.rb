# class Backer

#     attr_accessor :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         save
#     end

#     def self.all
#         @@all
#     end

#     def save
#         Backer.all << self
#     end

#     def back_project(project)
#         ProjectBacker.new(project, self)
#     end

#     def backed_projects
#         a = ProjectBacker.all.select { |pb| pb.backer == self}
#         a.map {|i| i.project}
#     end



# end


class Backer
 
    attr_accessor :name

    @@all = []
     
    def initialize(name)
    @name = name 
    # @backed_projects = []  -- the empty array returning all needs to be a class variable. I believe its 
    # usually @@all
    save
    end

    # I added the save method and .all class method

    def self.all
        @@all
    end

    def save
        Backer.all << self
    end

    def back_project(project)
        # all this wants is to create a new Project Backer
        # @backed_projects << project  
        # project.backer << self

        ProjectBacker.new(project, self)

    end
    
    def backed_projects
        #binding.pry 

       a = ProjectBacker.all.select { |project_backer| project_backer.backer == self}
       a.map do |i| 
        i.project 
       end
    end  

    def add_backer(backer)
    
    end
end