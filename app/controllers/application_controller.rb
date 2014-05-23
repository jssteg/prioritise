class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sifter_account
    Sifter::Account.new(ENV['SIFTER_HOST_NAME'], ENV['SIFTER_API_TOKEN'])
  end
end
