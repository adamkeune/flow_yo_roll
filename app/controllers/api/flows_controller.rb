class Api::FlowsController < ApplicationController
  before_action :authenticate_user

  def index
    @flows = current_user.flows.all
    render "index.json.jb"
  end

  def show
    @flow = current_user.flows.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @flow = Flow.new({
      title: params["title"],
      description: params["description"],
      user_id: current_user.id,
    })
    if @flow.save
      render "show.json.jb"
    else
      render json: { errors: @flow.errors.full_messages }, status: 422
    end
  end

  def update
    @flow = current_user.flows.find_by(id: params["id"])
    @flow.title = params["title"] || @flow.title
    @flow.description = params["description"] || @flow.description
    @flow.save
    render "show.json.jb"
  end

  def destroy
    @flow = current_user.flows.find_by(id: params["id"])
    @flow.destroy
    render json: { message: "Flow deleted" }
  end
end
