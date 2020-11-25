class Backer
    attr_accessor :name, :project, :title


    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers = ProjectBacker.all.select do |things|
             things.backer == self
        end
        backers.map do |things|
            things.project
        end
    end         
end