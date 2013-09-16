require 'spec_helper'

describe "publinks/index" do
  before(:each) do
    assign(:publinks, [
      stub_model(Publink,
        :url => "Url",
        :publinktype_id => "Publinktype"
      ),
      stub_model(Publink,
        :url => "Url",
        :publinktype_id => "Publinktype"
      )
    ])
  end

  it "renders a list of publinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Publinktype".to_s, :count => 2
  end
end
