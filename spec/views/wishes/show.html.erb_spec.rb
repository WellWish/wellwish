require 'rails_helper'

RSpec.describe "wishes/show", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
