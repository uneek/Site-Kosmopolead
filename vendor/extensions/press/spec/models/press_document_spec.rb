require File.dirname(__FILE__) + '/../spec_helper'

describe PressDocument do
  before(:each) do
    @press_document = PressDocument.new
  end

  it "should be valid" do
    @press_document.should be_valid
  end
end
