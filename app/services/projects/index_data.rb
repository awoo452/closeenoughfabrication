module Projects
  class IndexData
    Result = Struct.new(:projects, keyword_init: true)

    def self.call
      new.call
    end

    def call
      Result.new(
        projects: Project.all
      )
    end
  end
end
