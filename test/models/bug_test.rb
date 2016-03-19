require 'test_helper'

class BugTest < ActiveSupport::TestCase
  
 def setup
 @bug = Bug.create(title: "a title", description: "This is the actual text of our article. It can be rather long.", issue_type: 2, priority: 1, status: 0)
 end
  
  test "post must be valid" do
  assert @bug.valid?
  end

  test "title must be present" do
  @bug.title = ""
  assert_not @bug.valid?
  end
  
  test "article must be present" do
  @bug.description = ""
   assert_not @bug.valid?
end

  
end
