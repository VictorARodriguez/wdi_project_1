class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(params)
  if @user.save
    redirect_to "/", :notice => "Signed up!"
  else
    render "new"
  end
end

def login
end
def index

  end

private

def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end