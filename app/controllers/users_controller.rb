class UsersController < ApplicationController
  
  before_action :authenticate_user, only: [:show]
  before_action :is_logged_user, only: [:show]

  def index
  end

  def show
    @user = current_user
    @event_administrator = Event.find_by(administrator_id:current_user.id)
    
  end

  private
def authenticate_user
  unless current_user
    flash[:danger] = "Please log in."
    redirect_to root_path
  end
end

  def is_logged_user
    unless current_user.id == params[:id].to_i
      flash[:danger] = "You can only visit your profile."
      redirect_to root_path
    end
end
  
end
