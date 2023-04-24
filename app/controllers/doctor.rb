class Doctor < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end
end