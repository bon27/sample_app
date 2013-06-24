class FrontendController < ApplicationController
  def index
    render :layout=>false
  end
  def liquid
    render layout: false
  end
end

