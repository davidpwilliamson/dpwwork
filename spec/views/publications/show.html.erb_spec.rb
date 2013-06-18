require 'spec_helper'

describe "publications/show" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :bibtex => "MyText",
      :pubtype_id => 1,
      :html_title => "Html Title",
      :html_authors => "Html Authors",
      :html_reference => "Html Reference"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Html Title/)
    rendered.should match(/Html Authors/)
    rendered.should match(/Html Reference/)
  end
end
