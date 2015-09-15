class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    # this is because we don't have a "create" view
    #Handle a successful save.
    if @user.save
      flash[:success] = "Welcome to the Visma App!" 
      redirect_to @user
    else
      render 'new'
    end
  end
  def show 
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
end