class SessionsController < ApplicationController

  def new
  end

  def create
    if params["name"]==""||params["name"]==nil
      redirect_to '/login'
    else
      session[:name]=params["name"]
      redirect_to '/welcome'
    end
  end

  def destroy
    session[:name]=nil
    redirect_to '/login'
  end
end
