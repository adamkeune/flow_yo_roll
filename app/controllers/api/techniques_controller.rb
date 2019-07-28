class Api::TechniquesController < ApplicationController
  def index
    @techniques = Technique.all

    render "index.json.jb"
  end
end
