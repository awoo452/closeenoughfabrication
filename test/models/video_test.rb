require "test_helper"

class VideoTest < ActiveSupport::TestCase
  test "extracts youtube id from youtu.be" do
    video = Video.new(url: "https://youtu.be/abc123")

    assert_equal "abc123", video.youtube_id
  end

  test "extracts youtube id from youtube.com" do
    video = Video.new(url: "https://www.youtube.com/watch?v=xyz789")

    assert_equal "xyz789", video.youtube_id
  end

  test "builds embed url" do
    video = Video.new(url: "https://youtu.be/embedme")

    assert_equal "https://www.youtube.com/embed/embedme", video.embed_url
  end
end
