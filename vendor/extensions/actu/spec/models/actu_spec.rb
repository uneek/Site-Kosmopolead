require File.dirname(__FILE__) + '/../spec_helper'

describe Actu do
  before(:each) do
    @actu = Actu.new
  end

  it "should be valid" do
    @actu.should be_valid
  end
end
