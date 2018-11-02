class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:my_orders] 
  layout "home"
  def home
    
  end
  def my_orders
  end
  def about
  end
  def contact
  end
end
