class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to cities_path, notice: "Dziekuję za zarejestrowanie nowego administratora"
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:login, :password, :password_confirmation)
    end

end
