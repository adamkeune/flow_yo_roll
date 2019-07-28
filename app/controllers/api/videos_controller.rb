class Api::VideosController < ApplicationController
  def index
    @videos = Video.all

    render "index.json.jb"
  end

  def create
    @video = Video.new({
      title: params["title"],
      url: params["url"],
      technique_id: params["technique_id"],
      user_id: 1, # change after adding auth
    })

    @video.save

    render "show.json.jb"
  end

  def show
    @video = Video.find_by(id: params["id"])

    render "show.json.jb"
  end

  def destroy
    @video = Video.find_by(id: params["id"])

    @video.destroy

    render json: { message: "Video deleted" }
  end
end
