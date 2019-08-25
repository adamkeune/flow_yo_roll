class Api::FlowTechniquesController < ApplicationController
  before_action :authenticate_user

  def index
    flow = current_user.flows.find_by(id: params["flow_id"])

    if flow
      @flow_techniques = FlowTechnique.where(flow_id: params["flow_id"])
    end

    render "index.json.jb"
  end

  def create
    flow = current_user.flows.find_by(id: params["flow_id"])
    technique = current_user.techniques.find_by(id: params["technique_id"])

    if flow && technique
      @flow_technique = FlowTechnique.new({
        flow_id: flow.id,
        technique_id: technique.id,
      })
    else
      render json: {}, status: :unauthorized
    end

    if @flow_technique.save
      render "show.json.jb"
    else
      render json: { errors: @flow_technique.errors.full_messages }
    end
  end

  def destroy
    @flow_technique = FlowTechnique.where(technique_id: params["id"]).last
    @flow_technique.destroy
    render json: { message: "Removed from flow!" }
  end
end
