require 'rails_helper'

RSpec.describe "doctor show page" do
  before :each do
    test_data
    visit doctor_path(@doctor_1)
  end

  it 'has doctors information' do
    expect(page).to have_content("#{@doctor_1.name}")
    expect(page).to have_content("#{@doctor_1.specialty}")
    expect(page).to have_content("#{@doctor_1.university}")
  end

  it 'shows name of associated hospital' do
    expect(page).to have_content("#{@hospital_1.name}")
  end

  it 'lists the doctors patients' do
    expect(page).to have_content("#{@patient_1.name}")
    expect(page).to have_content("#{@patient_1.name}")
    expect(page).to_not have_content("#{@patient_3.name}")
  end

  it 'deletes doctor patient' do
    expect(page).to have_content("#{@patient_2.name}")
    click_link "Remove #{@patient_2.name}"

    expect(page).to_not have_content("#{@patient_2.name}")

    visit doctor_path(@doctor_2)
    expect(page).to have_content("#{@patient_2.name}")
  end
end