require 'spec_helper'

describe "contests/index" do
  before(:each) do
    assign(:contests, [
      stub_model(Contest,
        :title => "Title",
        :description => "Description"
      ),
      stub_model(Contest,
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of contests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
