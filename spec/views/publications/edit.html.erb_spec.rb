require 'spec_helper'

describe "publications/edit" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :bibtex => "MyText",
      :pubtype_id => 1,
      :html_title => "MyString",
      :html_authors => "MyString",
      :html_reference => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do
      assert_select "textarea#publication_bibtex[name=?]", "publication[bibtex]"
      assert_select "input#publication_pubtype_id[name=?]", "publication[pubtype_id]"
      assert_select "input#publication_html_title[name=?]", "publication[html_title]"
      assert_select "input#publication_html_authors[name=?]", "publication[html_authors]"
      assert_select "input#publication_html_reference[name=?]", "publication[html_reference]"
    end
  end
end
