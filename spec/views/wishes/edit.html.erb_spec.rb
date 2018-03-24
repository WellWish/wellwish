require 'rails_helper'

RSpec.describe "wishes/edit", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!())
  end

  it "renders the edit wish form" do
    render

    assert_select "form[action=?][method=?]", wish_path(@wish), "post" do
    end
  end
end
