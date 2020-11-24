class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers_project = ProjectBacker.all.select do |bp|
            bp.project == self
        end
        backers_project.map do |bp|
            bp.backer
        end
    end


end