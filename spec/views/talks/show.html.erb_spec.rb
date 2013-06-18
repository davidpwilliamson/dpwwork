require 'spec_helper'

describe "talks/show" do
  before(:each) do
    @talk = assign(:talk, stub_model(Talk,
      :title => "Title",
      :institution => "Institution",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Institution/)
    rendered.should match(/Location/)
  end
end
