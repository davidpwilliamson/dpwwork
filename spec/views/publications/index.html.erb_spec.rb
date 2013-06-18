require 'spec_helper'

describe "publications/index" do
  before(:each) do
    assign(:publications, [
      stub_model(Publication,
        :bibtex => "MyText",
        :pubtype_id => 1,
        :html_title => "Html Title",
        :html_authors => "Html Authors",
        :html_reference => "Html Reference"
      ),
      stub_model(Publication,
        :bibtex => "MyText",
        :pubtype_id => 1,
        :html_title => "Html Title",
        :html_authors => "Html Authors",
        :html_reference => "Html Reference"
      )
    ])
  end

  it "renders a list of publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Html Title".to_s, :count => 2
    assert_select "tr>td", :text => "Html Authors".to_s, :count => 2
    assert_select "tr>td", :text => "Html Reference".to_s, :count => 2
  end
end
