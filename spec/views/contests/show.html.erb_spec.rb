require 'spec_helper'

describe "contests/show" do
  before(:each) do
    @contest = assign(:contest, stub_model(Contest,
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
