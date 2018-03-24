require 'rails_helper'

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
      Wish.create!(),
      Wish.create!()
    ])
  end

  it "renders a list of wishes" do
    render
  end
end
