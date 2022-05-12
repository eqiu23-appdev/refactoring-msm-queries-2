# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
  belongs_to(:director)

  # has_many(:characters, { :class_name => "Character", :foreign_key => "movie_id"})
  #   has_many(:method name, { :class_name => "Character", :foreign_key => "movie_id"})
  #  this also works:  has_many(:method name, {:foreign_key => "movie_id"}), if method name is named conventionally (same as class)
    #  this also works:  has_many(:method name), if foreign key name is named conventionally class_id
  has_many(:characters)

  has_many(:cast, { :through => :characters, :source => :actor})


end
