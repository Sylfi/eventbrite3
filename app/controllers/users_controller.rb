class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @event_administrator = Event.find_by(administrator_id:current_user.id)
    
  end

  
end
