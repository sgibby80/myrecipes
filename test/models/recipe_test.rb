require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

def setup
    @Chef = Chef.create(chefname: "bob", email: "bob@example.com")
    @recipe = @chef.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever", description: "heat oil, add potatoes, then add chicken and cook for 20 minutes")
end

test "recipe should be valid" do
  assert @recipe.valid?
end

test "chef id should be present" do
  @recipe.chef_id = nil
  assert_not @recipe.valid?
end

  
  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
test "name length should not be too long" do
@recipe.name = "a" * 101
assert_not @recipe.valid?
end

test "name length should not be too short" 
@recipe.name = "aaaa"
assert_not @recipe.valid?
end

test "summaary shouod be present" do
@recipe.summary = " "
assert_not @recipe.valid?
end


test "summary length should not be too long" do
end

test "summary length should not be too short" do
end


test " description must be present" do
end

test "descipriotn should not be too long" do 
end

test "descitop must not be too short" do
end

  

