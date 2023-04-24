class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :doctor_patients
  has_many :patients, through: :doctor_patients

  def find_doctor_patient_by_patient(patient_id)
    doctor_patients.where(patient_id: patient_id).pluck(:id)
  end

  # def self.doctor_patient_count
  #   select("doctors.*, sum(doctor_patients) AS patient_count").joins(:doctor_patien).group(:id)
  # end
end
