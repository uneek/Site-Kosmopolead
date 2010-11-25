require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::ActusHelper do
  
  #Delete this example and add some real ones or delete this file
  it "should include the Admin::ActusHelper" do
    included_modules = self.metaclass.send :included_modules
    included_modules.should include(Admin::ActusHelper)
  end
  
end
