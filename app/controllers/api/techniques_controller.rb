class Api::TechniquesController < ApplicationController
  def index
    @techniques = Technique.all

    render "index.json.jb"
  end

  def show
    @technique = Technique.find_by(id: params["id"])

    render "show.json.jb"
  end
end
