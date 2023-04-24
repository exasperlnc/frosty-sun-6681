require 'rails_helper'

RSpec.describe Doctor do
  describe "Relationships" do
    it {should belong_to :hospital}
    it {should have_many :doctor_patients}
    it {should have_many(:patients).through(:doctor_patients)}
  end
  before :each do
    test_data
  end

  describe "#instance methods" do
    it 'finds doctor patient' do
      expect(@doctor_1.find_doctor_patient_by_patient(@patient_1.id)).to eq([@doctorpatient_1])
    end
    
  end

end
