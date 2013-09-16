require 'spec_helper'

describe "talklinks/edit" do
  before(:each) do
    @talklink = assign(:talklink, stub_model(Talklink,
      :url => "MyString",
      :talklinktype_id => 1
    ))
  end

  it "renders the edit talklink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talklink_path(@talklink), "post" do
      assert_select "input#talklink_url[name=?]", "talklink[url]"
      assert_select "input#talklink_talklinktype_id[name=?]", "talklink[talklinktype_id]"
    end
  end
end
