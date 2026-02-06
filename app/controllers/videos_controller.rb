class VideosController < ApplicationController
  def index
    data = Videos::IndexData.call
    @videos = data.videos
  end

  def show
    data = Videos::ShowData.call(video_id: params[:id])
    @video = data.video
  end
end
