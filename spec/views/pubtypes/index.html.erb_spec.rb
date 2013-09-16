require 'spec_helper'

describe "pubtypes/index" do
  before(:each) do
    assign(:pubtypes, [
      stub_model(Pubtype,
        :name => "Name"
      ),
      stub_model(Pubtype,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pubtypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
