require 'spec_helper'

describe "talklinks/new" do
  before(:each) do
    assign(:talklink, stub_model(Talklink,
      :url => "MyString",
      :talklinktype_id => 1
    ).as_new_record)
  end

  it "renders new talklink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talklinks_path, "post" do
      assert_select "input#talklink_url[name=?]", "talklink[url]"
      assert_select "input#talklink_talklinktype_id[name=?]", "talklink[talklinktype_id]"
    end
  end
end
