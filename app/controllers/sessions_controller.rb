# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :check_logged_in

  def new; end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)

    if user.nil?
      render :new
    elsif user.authenticate(password)
      session[:username] = username
      redirect_to books_path
    else
      render :new
    end
  end

  def delete # sign out
    session.delete(:username)
    redirect_to books_path
  end
end
