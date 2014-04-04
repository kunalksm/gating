require 'spec_helper'

describe "contests/new" do
  before(:each) do
    assign(:contest, stub_model(Contest,
      :title => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new contest form" do
    render

    assert_select "form[action=?][method=?]", contests_path, "post" do
      assert_select "input#contest_title[name=?]", "contest[title]"
      assert_select "input#contest_description[name=?]", "contest[description]"
    end
  end
end
