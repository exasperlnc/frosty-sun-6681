require 'rails_helper'

RSpec.describe "patient index page" do
  before :each do
    test_data
    visit patient_index_path
  end

  it 'has all adult patients' do
    expect(page).to have_content(@patient_1.name)
    expect(page).to have_content(@patient_2.name)
    expect(page).to have_content(@patient_4.name)
    
    expect(page).to_not have_content(@patient_3.name)
  end

  it 'orders patients names' do
    expect(page).to have_content("#{@patient_4.name} #{@patient_2.name} #{@patient_1.name}")
  end
end