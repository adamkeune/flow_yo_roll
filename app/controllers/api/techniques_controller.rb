class Api::TechniquesController < ApplicationController
  def index
    @techniques = Technique.all

    render "index.json.jb"
  end

  def create
    @technique = Technique.new({
      name: params["name"],
      description: params["description"],
      source: params["source"],
      priority: params["priority"].to_i,
      type_id: params["type_id"].to_i,
      user_id: 1,
    })

    @technique.save

    render "show.json.jb"
  end

  def show
    @technique = Technique.find_by(id: params["id"])

    render "show.json.jb"
  end
end
