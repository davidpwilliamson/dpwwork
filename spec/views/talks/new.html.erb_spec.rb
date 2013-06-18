require 'spec_helper'

describe "talks/new" do
  before(:each) do
    assign(:talk, stub_model(Talk,
      :title => "MyString",
      :institution => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new talk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talks_path, "post" do
      assert_select "input#talk_title[name=?]", "talk[title]"
      assert_select "input#talk_institution[name=?]", "talk[institution]"
      assert_select "input#talk_location[name=?]", "talk[location]"
    end
  end
end
