require 'spec_helper'

describe "static_pages/edit" do
  before(:each) do
    @static_page = assign(:static_page, stub_model(StaticPage,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit static_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", static_page_path(@static_page), "post" do
      assert_select "input#static_page_name[name=?]", "static_page[name]"
      assert_select "textarea#static_page_content[name=?]", "static_page[content]"
    end
  end
end
