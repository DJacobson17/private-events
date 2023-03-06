class UsersController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_user
  def show
  end

  def profile
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  
  private

  def set_user
    @user = current_user
  end
end
