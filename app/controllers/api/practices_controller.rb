class Api::PracticesController < ApplicationController
  before_action :authenticate_user

  def index
    @practices = current_user.practices.all
    render "index.json.jb"
  end

  def create
    @practice = Practice.new({
      technique_id: params["technique_id"],
      user_id: current_user.id,
    })

    if @practice.save
      render "show.json.jb"
    else
      render json: { message: "Practice not created" }, status: 422
    end
  end
end
