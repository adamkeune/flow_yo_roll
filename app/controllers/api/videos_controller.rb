class Api::VideosController < ApplicationController
  def index
    @videos = Video.all

    render "index.json.jb"
  end

  def show
    @video = Video.find_by(id: params["id"])

    render "show.json.jb"
  end
end
