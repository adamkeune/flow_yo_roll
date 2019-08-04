class Api::VideosController < ApplicationController
  before_action :authenticate_user

  def index
    @videos = current_user.videos.all

    render "index.json.jb"
  end

  def create
    @video = Video.new({
      title: params["title"],
      url: params["url"],
      technique_id: params["technique_id"],
      user_id: current_user.id,
    })

    if @video.save
      render "show.json.jb"
    else
      render json: { message: "Video not saved" }, status: 422
    end
  end

  def show
    @video = current_user.videos.find_by(id: params["id"])

    render "show.json.jb"
  end

  def destroy
    @video = current_user.videos.find_by(id: params["id"])

    @video.destroy

    render json: { message: "Video deleted" }
  end
end
