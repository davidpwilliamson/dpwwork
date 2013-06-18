require 'spec_helper'

describe "talks/index" do
  before(:each) do
    assign(:talks, [
      stub_model(Talk,
        :title => "Title",
        :institution => "Institution",
        :location => "Location"
      ),
      stub_model(Talk,
        :title => "Title",
        :institution => "Institution",
        :location => "Location"
      )
    ])
  end

  it "renders a list of talks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Institution".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
