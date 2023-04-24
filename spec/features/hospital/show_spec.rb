require 'rails_helper'

RSpec.describe "hospital show page" do
  before :each do
    test_data
    visit hospital_path(@hospital_1)
  end

  it 'lists the hospital name' do
    expect(page).to have_content(@hospital_1.name)
  end

  it 'lists the doctors for the hospital' do
    expect(page).to have_content(@doctor_1.name)
    expect(page).to have_content(@doctor_2.name)
    expect(page).to_not have_content(@doctor_3.name)
  end
end