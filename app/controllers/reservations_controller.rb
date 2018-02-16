# Contributions
# Eid Al-rabadi: Generated controller file
# Andrew Storch: Edited new and set protections using before_action
# Johan McGwire: View updating after model assosiations added


class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :require_authorization, only: [:index]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new

    # Set the user_id and trip_id
    @reservation.user_id = params[:user_id]
    @reservation.trip_id = params[:trip_id]
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    if (@reservation.user.id == current_user.id) || current_user.admin?
      respond_to do |format|
        if @reservation.update(reservation_params)
          format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
          format.json { render :show, status: :ok, location: @reservation }
        else
          format.html { render :edit }
          format.json { render json: @reservation.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    if (@reservation.user.id == current_user.id) || curent_user.admin?
      @reservation.destroy
      respond_to do |format|
        format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:user_id, :room_id, :trip_id)
    end
end
