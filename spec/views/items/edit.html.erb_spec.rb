require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "MyString",
      :category => "MyString",
      :unit => "MyString",
      :supply_price => "9.99",
      :labour_price => "9.99",
      :margin => "9.99",
      :sum_price => "9.99"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_title", :name => "item[title]"
      assert_select "input#item_category", :name => "item[category]"
      assert_select "input#item_unit", :name => "item[unit]"
      assert_select "input#item_supply_price", :name => "item[supply_price]"
      assert_select "input#item_labour_price", :name => "item[labour_price]"
      assert_select "input#item_margin", :name => "item[margin]"
      assert_select "input#item_sum_price", :name => "item[sum_price]"
    end
  end
end
