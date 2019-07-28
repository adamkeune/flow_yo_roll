class Api::VideosController < ApplicationController
  def index
    @videos = Video.all

    render "index.json.jb"
  end

  def create
    @video = Video.new({
      title: params["title"],
      url: params["url"],
      technique: params["technique_id"],
      user_id: 1, # change after adding auth
    })

    @video.save

    render "show.json.jb"
  end

  def show
    @video = Video.find_by(id: params["id"])

    render "show.json.jb"
  end
end
