class Api::PracticesController < ApplicationController
  def create
    @practice = Practice.new({
      technique_id: params["technique_id"],
      user_id: 1, # change after adding auth
    })

    @practice.save

    render "show.json.jb"
  end
end
