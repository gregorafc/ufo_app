class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_login(params[:login])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Zalogowany!"
    else
      flash[:error] = "Login lub hasło nieprawidłowe."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Wylogowany"
  end

end
