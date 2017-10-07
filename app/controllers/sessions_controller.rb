class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name].nil?
      session[:name] = params[:name]
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
  end
end
