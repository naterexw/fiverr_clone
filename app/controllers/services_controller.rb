class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to @service
    else
      render :new # use render instead of redirect_to so that previous object reused
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def service_params
      params.require(:service).permit(:title, :description, :price, :delivery_time, :revisions, :requirements)
    end
end
