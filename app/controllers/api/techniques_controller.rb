class Api::TechniquesController < ApplicationController
  before_action :authenticate_user

  def index
    @techniques = current_user.techniques.all

    render "index.json.jb"
  end

  def create
    @technique = Technique.new({
      name: params["name"],
      description: params["description"],
      source: params["source"],
      priority: params["priority"].to_i,
      type_id: params["type_id"].to_i,
      user_id: current_user.id,
    })

    @technique.save

    render "show.json.jb"
  end

  def show
    @technique = current_user.techniques.find_by(id: params["id"])

    render "show.json.jb"
  end

  def update
    @technique = current_user.techniques.find_by(id: params["id"])

    @technique.name = params["name"] || @technique.name
    @technique.description = params["description"] || @technique.description
    @technique.source = params["source"] || @technique.source
    @technique.priority = params["priority"] || @technique.priority
    @technique.type_id = params["type_id"] || @technique.type_id

    @technique.save

    render "show.json.jb"
  end

  def destroy
    @technique = current_user.techniques.find_by(id: params["id"])

    @technique.destroy

    render json: { message: "Technique deleted" }
  end
end
