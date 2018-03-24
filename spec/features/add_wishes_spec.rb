# frozen_string_literal: true

require "rails_helper"

RSpec.feature "AddWishes", type: :feature do
  scenario "A user adds a wish" do
    user = create(:user)

    sign_in user
    click_on "Create Wish"
    fill_in "Title", with: "Fix the broken basketball hoop"
    fill_in "Description", with: "Somebody dunked the ring and now it's bent " \
      "down. Would be good if someone could bend it back into shape."
    fill_in "Location", with: "Gowrie Street Reserve, Newtown, NSW, Australia"
    click_on "Add tools"
    fill_in "Tool", with: "ladder"
    click_on "Submit"

    expect(page).to have_text("Wish was created")
  end
end
