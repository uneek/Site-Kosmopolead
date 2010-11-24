require File.dirname(__FILE__) + '/../spec_helper'

describe PressFile do
  before(:each) do
    @press_file = PressFile.new
  end

  it "should be valid" do
    @press_file.should be_valid
  end
end
