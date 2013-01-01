require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :title => "Title",
        :category => "Category",
        :unit => "Unit",
        :supply_price => "9.99",
        :labour_price => "9.99",
        :margin => "9.99",
        :sum_price => "9.99"
      ),
      stub_model(Item,
        :title => "Title",
        :category => "Category",
        :unit => "Unit",
        :supply_price => "9.99",
        :labour_price => "9.99",
        :margin => "9.99",
        :sum_price => "9.99"
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
