require 'spec_helper'

describe "publinks/edit" do
  before(:each) do
    @publink = assign(:publink, stub_model(Publink,
      :url => "MyString",
      :publinktype_id => "MyString"
    ))
  end

  it "renders the edit publink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publink_path(@publink), "post" do
      assert_select "input#publink_url[name=?]", "publink[url]"
      assert_select "input#publink_publinktype_id[name=?]", "publink[publinktype_id]"
    end
  end
end
