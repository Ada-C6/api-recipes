require "#{Rails.root}/lib/api_wrapper.rb"

class SessionsController < ApplicationController
  def index
    # @data = ApiWrapper.search("edamame")
    @data = []
    # raise
  end

  def search
    @data = ApiWrapper.search(params[:q])
    render :index
  end
end
