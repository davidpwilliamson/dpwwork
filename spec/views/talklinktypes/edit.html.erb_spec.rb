require 'spec_helper'

describe "talklinktypes/edit" do
  before(:each) do
    @talklinktype = assign(:talklinktype, stub_model(Talklinktype,
      :name => "MyString"
    ))
  end

  it "renders the edit talklinktype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talklinktype_path(@talklinktype), "post" do
      assert_select "input#talklinktype_name[name=?]", "talklinktype[name]"
    end
  end
end
