class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
