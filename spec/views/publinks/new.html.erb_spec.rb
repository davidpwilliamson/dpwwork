require 'spec_helper'

describe "publinks/new" do
  before(:each) do
    assign(:publink, stub_model(Publink,
      :url => "MyString",
      :publinktype_id => "MyString"
    ).as_new_record)
  end

  it "renders new publink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publinks_path, "post" do
      assert_select "input#publink_url[name=?]", "publink[url]"
      assert_select "input#publink_publinktype_id[name=?]", "publink[publinktype_id]"
    end
  end
end
