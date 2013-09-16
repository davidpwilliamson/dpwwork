require 'spec_helper'

describe "publinktypes/edit" do
  before(:each) do
    @publinktype = assign(:publinktype, stub_model(Publinktype,
      :name => "MyString"
    ))
  end

  it "renders the edit publinktype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publinktype_path(@publinktype), "post" do
      assert_select "input#publinktype_name[name=?]", "publinktype[name]"
    end
  end
end
