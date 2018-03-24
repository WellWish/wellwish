require 'rails_helper'

RSpec.describe "wishes/new", type: :view do
  before(:each) do
    assign(:wish, Wish.new())
  end

  it "renders new wish form" do
    render

    assert_select "form[action=?][method=?]", wishes_path, "post" do
    end
  end
end
