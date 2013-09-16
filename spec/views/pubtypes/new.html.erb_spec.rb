require 'spec_helper'

describe "pubtypes/new" do
  before(:each) do
    assign(:pubtype, stub_model(Pubtype,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new pubtype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pubtypes_path, "post" do
      assert_select "input#pubtype_name[name=?]", "pubtype[name]"
    end
  end
end
