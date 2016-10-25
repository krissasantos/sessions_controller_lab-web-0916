class SessionsController < ApplicationController
  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
    #missing template. redirect after storing.
    else
      session[:name] = params[:name]
      redirect_to '/'
    end

  end


  def new

  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end
end
