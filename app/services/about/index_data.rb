module About
  class IndexData
    Result = Struct.new(:about_info, keyword_init: true)

    def self.call
      new.call
    end

    def call
      Result.new(
        about_info: YAML.load_file(Rails.root.join("config", "about_info.yml"))
      )
    end
  end
end
