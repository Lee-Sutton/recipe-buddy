require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "recipes require a name" do
    recipe = Recipe.new
    assert recipe.invalid?
  end

  test "valid recipe using fixtures" do 
    recipe = recipes(:one)
    assert_not recipe.invalid?
  end
end
