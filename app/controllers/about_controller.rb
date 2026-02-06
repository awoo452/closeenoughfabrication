class AboutController < ApplicationController
  def index
    data = About::IndexData.call
    @about_info = data.about_info
  end
end
