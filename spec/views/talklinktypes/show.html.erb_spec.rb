require 'spec_helper'

describe "talklinktypes/show" do
  before(:each) do
    @talklinktype = assign(:talklinktype, stub_model(Talklinktype,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
