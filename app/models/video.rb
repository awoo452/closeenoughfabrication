require "cgi"
require "json"
require "uri"

class Video < ApplicationRecord
  DATA_PATH = Rails.root.join("config", "videos.json")

  attr_reader :id, :title, :description, :image, :url, :created_at, :updated_at, :featured

  def initialize(attributes = {})
    super({})
    attributes = attributes.transform_keys(&:to_s)
    @id = attributes["id"]
    @title = attributes["title"]
    @description = attributes["description"]
    @image = attributes["image"]
    @url = attributes["url"]
    @created_at = attributes["created_at"]
    @updated_at = attributes["updated_at"]
    @featured = attributes["featured"]
    @youtube_id = attributes["youtube_id"]
  end

  def self.all
    load_data.map { |attributes| new(attributes) }
  end

  def self.where(conditions = {})
    all.select do |record|
      conditions.all? { |key, value| record.public_send(key) == value }
    end
  end

  def self.find(id)
    record = all.find { |entry| entry.id.to_s == id.to_s }
    raise ActionController::RoutingError, "Not Found" unless record

    record
  end

  def youtube_id
    return @youtube_id if @youtube_id.present?
    return if url.blank?

    uri = URI.parse(url)
    host = uri.host.to_s

    if host.include?("youtu.be")
      uri.path.to_s.sub("/", "").split("/").first
    elsif host.include?("youtube.com")
      params = CGI.parse(uri.query.to_s)
      params["v"]&.first || uri.path.to_s.split("/").last
    end
  rescue URI::InvalidURIError
    nil
  end

  def embed_url
    return if youtube_id.blank?

    "https://www.youtube.com/embed/#{youtube_id}"
  end

  def to_param
    id.to_s
  end

  def persisted?
    id.present?
  end

  def self.load_data
    JSON.parse(DATA_PATH.read)
  rescue Errno::ENOENT
    Rails.logger.warn("Videos data file missing at #{DATA_PATH}")
    []
  end
end
