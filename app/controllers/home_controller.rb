# Contributions
# Andrew Storch: Home Controller and All Methods
# Johan McGwire: View updating after model assosiations added


class HomeController < ApplicationController

  # Define instance variables for use in the User views
  def index
    @trips = Trip.all
    @users = User.all
    #check if a user is signed in to avoid error calling current_user
    if user_signed_in?
      @reservations = Reservation.all.where(user_id: current_user.id)
    end
  end

  # Define instance variables to use in show_reservations views
  def show_reservations
    user = User.find(current_user.id)
    @reservations = user.reservations
  end

  # Define instance variables to use in show_users views
  def show_users
    @users = User.all
  end
end
