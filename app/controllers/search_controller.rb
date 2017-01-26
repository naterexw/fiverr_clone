class SearchController < ApplicationController

  def index
    @services = Service.all.order("created_at DESC")
  end

  def search
    if params[:q]
      @services = Service.search(params[:q]).order("created_at DESC")
    else
      @services = Service.all.order("created_at DESC")
    end
  end

end
