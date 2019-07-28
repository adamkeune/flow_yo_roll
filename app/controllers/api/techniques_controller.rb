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

  def update
    @technique = Technique.find_by(id: params["id"])

    @technique.name = params["name"] || @technique.name
    @technique.description = params["description"] || @technique.description
    @technique.source = params["source"] || @technique.source
    @technique.priority = params["priority"] || @technique.priority
    @technique.type_id = params["type_id"] || @technique.type_id

    @technique.save

    render "show.json.jb"
  end
end
