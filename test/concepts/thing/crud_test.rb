require 'test_helper'

class ThingCrudTest < Minitest::Test
  def test_model_is_persisted
    Thing::Create.(valid_params) do |o|
      assert o.model.persisted?
    end
  end

  def test_name_is_set
    Thing::Create.({ thing: { name: "Rails" } }) do |o|
      assert_equal "Rails", o.model.name
    end
  end

  def test_description_is_set
    Thing::Create.(valid_params.deep_merge(thing: { description: "Kickass web dev" })) do |o|
      assert_equal "Kickass web dev", o.model.description
    end
  end

  private
  def valid_params
    { thing: { name: "Must exist" } }
  end
end
