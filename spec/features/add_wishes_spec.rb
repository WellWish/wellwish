require 'rails_helper'

RSpec.feature "AddWishes", type: :feature do
  scenario "A user adds a wish" do
    binding.irb
    sign_in users(:ryan)
  end
end
