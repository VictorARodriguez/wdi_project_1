class GamesController < ActionController::Base

def index
    @users = User.order (:name :email :password :bio)
end

def new
    # new instance of user for the form helper
    @user = User.new
    # render json: @users
end
end


  def show
    # by default...
    # render :name_of_this_method

    # define @user
    @user = User.find(params[:name])

    # makes the form work
    @user = User.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # cookbook_attributes = params[:cookbook]

    # new way... *but requires private_method
    User.create(user_attributes)

    render json: {
      strong_params: user_attributes
    }


    # when done...
    redirect_to users_path
  end

  #def edit
   # @cookbook = Cookbook.find(params[:id])
    # render json: @cookbook
    #render partial: "cookbookform", locals: { cookbook_local: @cookbook }
  #end

   #def update

    #cookbook = Cookbook.find(params[:id])

    #cookbook.update_attributes(cookbook_attributes)

    # render json: cookbook
    #redirect_to "/cookbooks/#{params[:id]}"
  #end

  #private

  # strong params
  #def cookbook_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:user).permit(:name, :email, :password, :bio)
  #end

end

#end
