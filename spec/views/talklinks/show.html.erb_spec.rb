require 'spec_helper'

describe "talklinks/show" do
  before(:each) do
    @talklink = assign(:talklink, stub_model(Talklink,
      :url => "Url",
      :talklinktype_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/1/)
  end
end
