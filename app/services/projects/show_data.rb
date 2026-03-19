module Projects
  class ShowData
    Result = Struct.new(:project, keyword_init: true)

    def self.call(project_id:)
      new(project_id: project_id).call
    end

    def initialize(project_id:)
      @project_id = project_id
    end

    def call
      project = Project.find(@project_id)
      Result.new(project: project)
    end
  end
end
