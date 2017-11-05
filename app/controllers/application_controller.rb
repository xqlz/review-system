# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_logged_in

  def check_logged_in
    redirect_to new_session_path if session[:username].nil?
  end
end
