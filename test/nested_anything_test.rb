require 'test_helper'

class NestedAnythingTest < ActionController::TestCase
  tests FoosController

  test 'appends _attributes to hash keys that correspond to models that accepts them' do
    post :create, foo: { name: 'MyFoo', bars: [{ name: 'MyBar', baz: { name: 'MyBaz' }}]}
    assert_equal attributes_params.with_indifferent_access, @controller.params['foo']
  end

  private

  def attributes_params
    return { name: 'MyFoo', bars_attributes: [{ name: 'MyBar', baz_attributes: { name: 'MyBaz' }}]}
  end
end
