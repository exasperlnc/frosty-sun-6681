class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :doctor_patients
  has_many :patients, through: :doctor_patients

  def find_doctor_patient_by_patient(patient_id)
    doctor_patients.where(patient_id: patient_id)
  end
end
