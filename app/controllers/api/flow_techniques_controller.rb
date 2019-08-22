class Api::FlowTechniquesController < ApplicationController
  before_action :authenticate_user

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
      render json: { message: "Added to flow!" }
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
