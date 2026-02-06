module Projects
  class CreateProject
    Result = Struct.new(:success?, :project, keyword_init: true)

    def self.call(params:)
      new(params: params).call
    end

    def initialize(params:)
      @params = params
    end

    def call
      project = Project.new(@params)

      if project.save
        Result.new(success?: true, project: project)
      else
        Result.new(success?: false, project: project)
      end
    end
  end
end
