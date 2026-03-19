module Videos
  class ShowData
    Result = Struct.new(:video, keyword_init: true)

    def self.call(video_id:)
      new(video_id: video_id).call
    end

    def initialize(video_id:)
      @video_id = video_id
    end

    def call
      video = Video.find(@video_id)
      Result.new(video: video)
    end
  end
end
