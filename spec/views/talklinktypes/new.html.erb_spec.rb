require 'spec_helper'

describe "talklinktypes/new" do
  before(:each) do
    assign(:talklinktype, stub_model(Talklinktype,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new talklinktype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talklinktypes_path, "post" do
      assert_select "input#talklinktype_name[name=?]", "talklinktype[name]"
    end
  end
end
