class ApplicationController < ActionController::API
  include ActionController::Cookies

  def temp
    # session[:dummy] ="me"
    # render json: {testing: session[:dummy] }
  end
end
