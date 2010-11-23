require File.dirname(__FILE__) + '/../spec_helper'

describe Member do
  before(:each) do
    @member = Member.new
  end

  it "should be valid" do
    @member.should be_valid
  end
end
