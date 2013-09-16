require 'spec_helper'

describe "static_pages/new" do
  before(:each) do
    assign(:static_page, stub_model(StaticPage,
      :name => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new static_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", static_pages_path, "post" do
      assert_select "input#static_page_name[name=?]", "static_page[name]"
      assert_select "textarea#static_page_content[name=?]", "static_page[content]"
    end
  end
end
