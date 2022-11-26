class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    first_name = self.actors.first.first_name
    last_name = self.actors.first.last_name
    "#{first_name} #{last_name}"
  end

end