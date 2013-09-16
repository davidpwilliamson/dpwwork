require 'spec_helper'

describe "talklinktypes/index" do
  before(:each) do
    assign(:talklinktypes, [
      stub_model(Talklinktype,
        :name => "Name"
      ),
      stub_model(Talklinktype,
        :name => "Name"
      )
    ])
  end

  it "renders a list of talklinktypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
