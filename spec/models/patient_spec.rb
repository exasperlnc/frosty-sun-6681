require 'rails_helper' 

RSpec.describe Patient do
  describe "relationships" do
    it {should have_many :doctor_patients}
    it {should have_many(:doctors).through(:doctor_patients)}
  end
  before :each do
    test_data
  end

  describe "#class methods" do
    it 'gets adults and sorts alphabetically' do
      expect(Patient.adults_only_sorted).to eq([@patient_4, @patient_2, @patient_1])
    end
  end
end