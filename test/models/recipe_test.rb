require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "recipes require a name" do
    recipe = Recipe.new
    assert recipe.invalid?
  end
end
