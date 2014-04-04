require 'spec_helper'

describe "contests/edit" do
  before(:each) do
    @contest = assign(:contest, stub_model(Contest,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit contest form" do
    render

    assert_select "form[action=?][method=?]", contest_path(@contest), "post" do
      assert_select "input#contest_title[name=?]", "contest[title]"
      assert_select "input#contest_description[name=?]", "contest[description]"
    end
  end
end
