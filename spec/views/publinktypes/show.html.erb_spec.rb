require 'spec_helper'

describe "publinktypes/show" do
  before(:each) do
    @publinktype = assign(:publinktype, stub_model(Publinktype,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
