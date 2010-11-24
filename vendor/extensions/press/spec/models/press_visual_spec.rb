require File.dirname(__FILE__) + '/../spec_helper'

describe PressVisual do
  before(:each) do
    @press_visual = PressVisual.new
  end

  it "should be valid" do
    @press_visual.should be_valid
  end
end
