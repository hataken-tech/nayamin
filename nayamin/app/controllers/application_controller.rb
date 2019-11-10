class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_current_nayami
  before_action :set_current_user
 
 def set_current_nayami
   @hataken = Nayami.find_by(id: params[:id])
 end
 
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
end
