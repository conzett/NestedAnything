class Bar < ActiveRecord::Base
  belongs_to :foo
  has_one :baz
  accepts_nested_attributes_for :baz
end
