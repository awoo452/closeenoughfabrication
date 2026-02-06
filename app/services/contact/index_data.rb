module Contact
  class IndexData
    Result = Struct.new(:contact_info, keyword_init: true)

    def self.call
      new.call
    end

    def call
      Result.new(
        contact_info: YAML.load_file(Rails.root.join("config", "contact_info.yml"))
      )
    end
  end
end
