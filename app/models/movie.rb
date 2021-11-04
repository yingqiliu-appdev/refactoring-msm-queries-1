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

  def director

    dir_id = self.director_id 
    #self here acts like a placeholder for the object being operated on

    return Director.where({ :id => dir_id}).at(0)

  end

end
