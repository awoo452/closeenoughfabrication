module Projects
  class DestroyProject
    def self.call(project:)
      new(project: project).call
    end

    def initialize(project:)
      @project = project
    end

    def call
      @project.destroy
    end
  end
end
