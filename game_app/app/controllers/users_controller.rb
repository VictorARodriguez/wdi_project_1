class UsersController < ApplicationController

	def new
	  @user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    redirect_to "/", :notice => "Signed up!"
	  else
	    render "new"
	  end
	end


	def index

	end

  def show
    @user = current_user
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_salt)
  end

end