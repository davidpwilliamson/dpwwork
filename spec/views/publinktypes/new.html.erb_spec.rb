require 'spec_helper'

describe "publinktypes/new" do
  before(:each) do
    assign(:publinktype, stub_model(Publinktype,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new publinktype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publinktypes_path, "post" do
      assert_select "input#publinktype_name[name=?]", "publinktype[name]"
    end
  end
end
