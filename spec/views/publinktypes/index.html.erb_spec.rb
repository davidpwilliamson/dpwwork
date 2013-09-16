require 'spec_helper'

describe "publinktypes/index" do
  before(:each) do
    assign(:publinktypes, [
      stub_model(Publinktype,
        :name => "Name"
      ),
      stub_model(Publinktype,
        :name => "Name"
      )
    ])
  end

  it "renders a list of publinktypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
