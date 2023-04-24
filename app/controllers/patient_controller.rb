class PatientController < ApplicationController
  def index
    @patient = Patient.adults_only_sorted
  end
end