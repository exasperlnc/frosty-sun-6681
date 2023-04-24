class Doctor::DoctorPatientController < ApplicationController
  def destroy
    @doctor = Doctor.find(params[:doctor_id])
    DoctorPatient.find(params[:id]).destroy
    redirect_to doctor_path(@doctor) 
  end
end