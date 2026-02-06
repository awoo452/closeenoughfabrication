module Tasks
  class ShowData
    Result = Struct.new(:task, keyword_init: true)

    def self.call(task_id:)
      new(task_id: task_id).call
    end

    def initialize(task_id:)
      @task_id = task_id
    end

    def call
      task = Task.find(@task_id)
      Result.new(task: task)
    end
  end
end
