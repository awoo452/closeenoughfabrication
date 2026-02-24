require "json"

class Project < ApplicationRecord
  DATA_PATH = Rails.root.join("config", "projects.json")

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

  def to_param
    id.to_s
  end

  def persisted?
    id.present?
  end

  def self.load_data
    JSON.parse(DATA_PATH.read)
  rescue Errno::ENOENT
    Rails.logger.warn("Projects data file missing at #{DATA_PATH}")
    []
  end
end
