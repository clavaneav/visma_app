class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash.now[:error] = 'Invalid email/password combination' #--> won't work here because 
      #error is from ActiveRecord and we have session here
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end