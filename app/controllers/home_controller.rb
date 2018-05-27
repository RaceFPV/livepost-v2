class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:landing]
  
  def dashboard
  end
  
  def landing
    if user_signed_in? then redirect_to dashboard_path end
  end
  
end
