class PagesController < ApplicationController
  layout "landing"

  def home
    @services = Service.all
  end
end
