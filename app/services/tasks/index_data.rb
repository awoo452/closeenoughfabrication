module Tasks
  class IndexData
    Result = Struct.new(:tasks, keyword_init: true)

    def self.call
      new.call
    end

    def call
      Result.new(
        tasks: Task.all
      )
    end
  end
end
