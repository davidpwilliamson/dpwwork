require 'spec_helper'

describe "pubtypes/edit" do
  before(:each) do
    @pubtype = assign(:pubtype, stub_model(Pubtype,
      :name => "MyString"
    ))
  end

  it "renders the edit pubtype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pubtype_path(@pubtype), "post" do
      assert_select "input#pubtype_name[name=?]", "pubtype[name]"
    end
  end
end
