require 'spec_helper'

describe "publinks/show" do
  before(:each) do
    @publink = assign(:publink, stub_model(Publink,
      :url => "Url",
      :publinktype_id => "Publinktype"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Publinktype/)
  end
end
