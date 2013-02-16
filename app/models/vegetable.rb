class Vegetable < ActiveRecord::Base
  attr_accessible :name

  def companionships
    left_side_relationships = Companionship.where(:first_id => self.id)
    right_side_relationships = Companionship.where(:second_id => self.id)
    return left_side_relationships + right_side_relationships
  end

  def companions
    companion_vegetables = []

    left_side_relationships = Companionship.where(:first_id => self.id)
    left_side_relationships.each do |companionship|
      companion_vegetables << companionship.second
    end

    right_side_relationships = Companionship.where(:second_id => self.id)
    right_side_relationships.each do |companionship|
      companion_vegetables << companionship.first
    end

    return companion_vegetables
  end

    def antagonisms
    left_side_relationships = Antagonisms.where(:first_id => self.id)
    right_side_relationships = Antagonisms.where(:second_id => self.id)
    return left_side_relationships + right_side_relationships
  end

  def companions
    antagonist_vegetables = []

    left_side_relationships = Antagonisms.where(:first_id => self.id)
    left_side_relationships.each do |antagonisms|
      antagonsit_vegetables << antagonisms.second
    end

    right_side_relationships = Antagonisms.where(:second_id => self.id)
    right_side_relationships.each do |antagonisms|
      antagonist_vegetables << antagonisms.first
    end

    return antagonist_vegetables
end
