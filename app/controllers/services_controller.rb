class ServicesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_service, only: [:show, :edit, :update]

  def index
    @services = current_user.services
  end

  def show
    @is_buyer = Order.where("service_id = ? AND user_id = ?", @service.id, current_user.id).present? if current_user
    @reviews = @service.reviews
    @reviewed = @reviews.find_by(user_id: current_user.id) if current_user
  end

  def new
    @service = current_user.services.build
  end

  def create
    @service = current_user.services.build(service_params)

    if @service.save
      redirect_to @service
    else
      render :new # use render instead of redirect_to so that previous object reused
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def service_params
      params.require(:service).permit(:title, :description, :price, :delivery_time, :revisions, :requirements, :image)
    end

    def set_service
      @service = Service.find(params[:id])
    end
end
