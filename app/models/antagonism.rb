class Antagonism < ActiveRecord::Base
  attr_accessible :first_id, :second_id

  belongs_to :first, :class_name => 'Vegetable', :foreign_key => 'first_id'
  belongs_to :second, :class_name => 'Vegetable', :foreign_key => 'second_id'
end
