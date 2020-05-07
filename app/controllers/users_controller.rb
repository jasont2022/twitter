class UsersController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_user, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @tweets = @user.tweets.order("created_at DESC")
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :username, :email, :avatar)
    end

    def check_user
      if @user != current_user
        redirect_to users_url
      end
    end
end
