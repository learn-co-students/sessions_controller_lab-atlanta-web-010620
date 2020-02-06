class SessionsController < ApplicationController
  
  def new

  end

  def create
    name = params[:name]
    if !name.blank?
      session[:name] = name
      redirect_to "/"
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
      session.delete :name
  end
end
