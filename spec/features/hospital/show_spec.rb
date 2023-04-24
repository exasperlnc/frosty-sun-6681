require 'rails_helper'

RSpec.describe "hospital show page" do
  before :each do
    test_data
    visit hospital_path(@hospital_1)
  end
end