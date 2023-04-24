class PatientController < ApplicationController
  def index
    @patients = Patient.adults_only_sorted
  end
end