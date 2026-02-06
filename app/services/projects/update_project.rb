module Projects
  class UpdateProject
    Result = Struct.new(:success?, :project, keyword_init: true)

    def self.call(project:, params:)
      new(project: project, params: params).call
    end

    def initialize(project:, params:)
      @project = project
      @params = params
    end

    def call
      if @project.update(@params)
        Result.new(success?: true, project: @project)
      else
        Result.new(success?: false, project: @project)
      end
    end
  end
end
