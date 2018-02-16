# Contributions
# Andrew Storch: require_authorization

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Method to use as before_action to restrict access to controllers
  def require_authorization
    if user_signed_in?
      redirect_to root_url, :notice => "Access Denied" unless current_user.admin?
    else
      redirect_to root_url, :notice => "Please Sign In"
    end
  end

end
